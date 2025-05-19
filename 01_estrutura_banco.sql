-- Criação das tabelas do sistema de transporte de pacientes

CREATE TABLE Paciente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cns VARCHAR(20),
    cpf VARCHAR(14),
    data_nascimento DATE,
    telefone VARCHAR(20),
    responsavel VARCHAR(100),
    cep VARCHAR(10),
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2)
);

CREATE TABLE Unidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tipo ENUM('HOSPITAL', 'UBS')
);

CREATE TABLE CondicaoMedica (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100)
);

CREATE TABLE Transporte (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('AMBULANCIA', 'UTI_MOVEL', 'VEICULO_ADAPTADO', 'TAXI'),
    prioridade ENUM('ROTINA', 'URGENCIA', 'EMERGENCIA'),
    data DATE,
    horario TIME,
    origem_tipo ENUM('DOMICILIO', 'HOSPITAL', 'UBS', 'OUTRO'),
    destino_tipo ENUM('DOMICILIO', 'HOSPITAL', 'UBS', 'OUTRO'),
    endereco_origem VARCHAR(255),
    endereco_destino VARCHAR(255),
    unidade_origem_id INT,
    unidade_destino_id INT,
    FOREIGN KEY (unidade_origem_id) REFERENCES Unidade(id),
    FOREIGN KEY (unidade_destino_id) REFERENCES Unidade(id)
);

CREATE TABLE Acompanhante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE Agendamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    paciente_id INT,
    transporte_id INT,
    condicao_id INT,
    acompanhante_id INT,
    observacoes TEXT,
    mobilidade ENUM('ANDANDO', 'CADEIRA_DE_RODAS', 'MACA', 'DECUBITO'),
    equipamentos TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id),
    FOREIGN KEY (transporte_id) REFERENCES Transporte(id),
    FOREIGN KEY (condicao_id) REFERENCES CondicaoMedica(id),
    FOREIGN KEY (acompanhante_id) REFERENCES Acompanhante(id)
);
