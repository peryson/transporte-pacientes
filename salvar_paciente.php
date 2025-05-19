<?php
// Configurações de conexão com o banco de dados
$host = "localhost";
$usuario = "root";
$senha = ""; // Deixe em branco se estiver usando XAMPP padrão
$banco = "transporte_db";

// Conecta ao banco de dados
$conn = new mysqli($host, $usuario, $senha, $banco);

// Verifica a conexão
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

// Coleta os dados enviados via POST
$nome = $_POST['nome'] ?? '';
$cns = $_POST['cns'] ?? '';
$cpf = $_POST['cpf'] ?? '';
$data_nascimento = $_POST['data_nascimento'] ?? '';
$telefone = $_POST['telefone'] ?? '';
$responsavel = $_POST['responsavel'] ?? '';
$cep = $_POST['cep'] ?? '';
$logradouro = $_POST['logradouro'] ?? '';
$numero = $_POST['numero'] ?? '';
$complemento = $_POST['complemento'] ?? '';
$bairro = $_POST['bairro'] ?? '';
$cidade = $_POST['cidade'] ?? '';
$estado = $_POST['estado'] ?? '';

// Prepara a instrução SQL
$stmt = $conn->prepare("INSERT INTO Paciente 
    (nome, cns, cpf, data_nascimento, telefone, responsavel, cep, logradouro, numero, complemento, bairro, cidade, estado) 
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("sssssssssssss", 
    $nome, $cns, $cpf, $data_nascimento, $telefone, 
    $responsavel, $cep, $logradouro, $numero, 
    $complemento, $bairro, $cidade, $estado
);

// Executa e verifica o resultado
if ($stmt->execute()) {
    echo "✅ Paciente cadastrado com sucesso!";
} else {
    echo "❌ Erro ao cadastrar: " . $stmt->error;
}

// Fecha conexões
$stmt->close();
$conn->close();
?>
