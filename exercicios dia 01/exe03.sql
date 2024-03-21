CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    nota DECIMAL(3, 2),
    serie INT,
    turma VARCHAR(10),
    PRIMARY KEY(id)
);

INSERT INTO estudantes (nome, data_nascimento, nota, serie, turma) VALUES
('Estudante 1', '2005-01-10', 8.5, 9, 'A'),
('Estudante 2', '2006-03-20', 7.0, 8, 'B'),
('Estudante 3', '2005-07-15', 9.0, 9, 'A'),
('Estudante 4', '2006-11-30', 6.5, 8, 'B'),
('Estudante 5', '2005-05-05', 7.5, 9, 'A'),
('Estudante 6', '2006-09-15', 6.0, 8, 'B'),
('Estudante 7', '2005-02-20', 8.0, 9, 'A'),
('Estudante 8', '2006-12-10', 6.5, 8, 'B');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.5 WHERE nome = 'Estudante 4';