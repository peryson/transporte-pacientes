-- Inserindo um paciente
INSERT INTO Paciente (nome, cns, cpf, data_nascimento, telefone, estado)
VALUES ('João Silva', '123456789012345', '111.222.333-44', '1985-07-12', '(67)99999-8888', 'MS');

-- Atualizando telefone
UPDATE Paciente SET telefone = '(67)98888-7777' WHERE id = 1;

-- Deletando acompanhante
DELETE FROM Acompanhante WHERE id = 2;

-- Consulta com JOIN
SELECT 
    p.nome AS paciente,
    t.tipo AS transporte,
    a.data AS data_agendada
FROM Agendamento a
JOIN Paciente p ON a.paciente_id = p.id
JOIN Transporte t ON a.transporte_id = t.id;
