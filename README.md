# 🚑 Sistema de Agendamento de Transporte de Pacientes Eletivos

Este projeto tem como objetivo otimizar o processo de **agendamento de transporte de pacientes** no setor de Regulação Municipal por meio de uma aplicação web funcional e responsiva.

---

## 🧩 Tecnologias Utilizadas

- **HTML5** – estrutura semântica da interface.
- **Tailwind CSS** – estilização responsiva com design moderno.
- **JavaScript (Vanilla)** – interações de UI como abas, menus e campos dinâmicos.
- **PHP** – backend simples para envio de dados ao banco.
- **MySQL** – banco de dados relacional.
- **Git & GitHub** – versionamento e colaboração.

---

## 📋 Funcionalidades da Aplicação

- Formulários divididos em **abas**: Paciente, Transporte e Informações Médicas.
- Interface moderna e responsiva, com **design adaptado a diferentes dispositivos**.
- Exibição dinâmica de campos (ex: acompanhantes, tipo de origem/destino).
- Integração com banco de dados relacional para **armazenamento seguro das informações**.
- Notificações, menu lateral colapsável e interações fluídas.
- Controle de versão com Git e organização do código no GitHub.

---

## 🗃️ Estrutura do Banco de Dados

O banco de dados foi modelado com foco na integridade e normalização. Ele contém as seguintes tabelas:

- `Paciente`
- `Unidade`
- `CondicaoMedica`
- `Transporte`
- `Acompanhante`
- `Agendamento`

Os scripts SQL estão localizados na pasta `banco_de_dados/`:

- `01_estrutura_banco.sql`: Criação das tabelas e relações.
- `02_manipulacao_dados.sql`: Inserções, atualizações, exclusões e consultas.

---

## 🚀 Como Executar o Projeto

### 1. Configuração do ambiente

Recomenda-se o uso do [XAMPP](https://www.apachefriends.org/pt_br/index.html) ou similar para rodar Apache + MySQL localmente.

### 2. Importação do banco de dados

- Acesse `http://localhost/phpmyadmin`
- Crie um banco com o nome `transporte_db`
- Importe o arquivo `01_estrutura_banco.sql`
- (Opcional) Execute o `02_manipulacao_dados.sql` para testes

### 3. Coloque os arquivos no diretório do servidor

Exemplo para XAMPP:
C:\xampp\htdocs\transporte-pacientes\
http://localhost/transporte-pacientes/index.html

Estrutura de pastas recomendada
transporte-pacientes/
frontend (index.html)
backend (salvar_paciente.php)
Banco de dados (01_estrutura_banco.sql/02_manipulacao_dados.sql)
README.md
.gitignore
