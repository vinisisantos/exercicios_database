CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100),
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    descricao_produto VARCHAR(255),
    valor DECIMAL(5, 2),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Aves', 'Produtos derivados de aves'),
('Carnes', 'Diversos tipos de carnes'),
('Peixes', 'Diversos tipos de peixes'),
('Frutas', 'Diversos tipos de frutas'),
('Legumes', 'Diversos tipos de legumes');

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor, id_categoria) VALUES
('Picanha', 'Corte nobre de carne bovina', 60.00, 2),
('Frango Inteiro', 'Frango inteiro, ideal para assar', 30.00, 1),
('Salmão', 'Peixe salmão fresco', 70.00, 3),
('Alface Crespa', 'Alface fresca e crocante', 5.00, 5),
('Tomate', 'Tomate maduro e suculento', 8.00, 4),
('Maçã', 'Maçã vermelha doce e suculenta', 10.00, 4),
('Pera', 'Pera doce e suculenta', 15.00, 4),
('Costela Suína', 'Costela suína macia e suculenta', 85.00, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Aves' OR tb_categorias.nome_categoria = 'Frutas';

