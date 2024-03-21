CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade_em_estoque INT,
    categoria VARCHAR(100),
    PRIMARY KEY(id)
);

INSERT INTO produtos (nome, descricao, preco, quantidade_em_estoque, categoria) VALUES
('Produto 1', 'Descrição do Produto 1', 1000, 50, 'Categoria 1'),
('Produto 2', 'Descrição do Produto 2', 500, 30, 'Categoria 2'),
('Produto 3', 'Descrição do Produto 3', 1500, 20, 'Categoria 3'),
('Produto 4', 'Descrição do Produto 4', 200, 100, 'Categoria 4'),
('Produto 5', 'Descrição do Produto 5', 300, 150, 'Categoria 5'),
('Produto 6', 'Descrição do Produto 6', 2500, 10, 'Categoria 1'),
('Produto 7', 'Descrição do Produto 7', 350, 200, 'Categoria 2'),
('Produto 8', 'Descrição do Produto 8', 450, 80, 'Categoria 3');

-- Nesa parte jogamos o SELECT para separar os produtos com valor maior que 500
SELECT * FROM produtos WHERE preco > 500;

-- Agora nessa parte fazemos o inverso, e usamos o SELECT para mostrar os produtos com valor menor que 500 
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 550 WHERE nome = 'Produto 2';