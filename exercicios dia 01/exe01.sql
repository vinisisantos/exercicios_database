CREATE DATABASE rh; 

-- Aqui fazemos a conexão do DB com a nossa tabela atraves do USE rh
USE rh;
CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    data_contratacao DATE,
    salario DECIMAL(10, 2),
    email VARCHAR(100),
    PRIMARY KEY(id)
);

-- aqui estamos fazendo a inserção dos dados dos colaboradores 
INSERT INTO colaboradores (nome, cargo, data_contratacao, salario, email) VALUES
('João Silva', 'Gerente', '2020-01-10', 3000, 'joao.silva@empresa.com'),
('Maria Santos', 'Analista', '2021-03-20', 2500, 'maria.santos@empresa.com'),
('Pedro Costa', 'Desenvolvedor', '2022-07-15', 3500, 'pedro.costa@empresa.com'),
('Ana Pereira', 'Designer', '2021-11-30', 1500, 'ana.pereira@empresa.com'),
('Lucas Souza', 'Analista', '2020-05-05', 2400, 'lucas.souza@empresa.com');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

-- aqui estava dando erro 1175 de safe mode ao executar a linha 30, então usando esse código ele desativa 
SET SQL_SAFE_UPDATES = 0;

-- estamos atualizando o salário do Lucas Souza na tabela
UPDATE colaboradores SET salario = 2600 WHERE nome = 'Lucas Souza';


