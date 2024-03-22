CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100),
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT,
    nome_pizza VARCHAR(100),
    descricao_pizza VARCHAR(255),
    valor DECIMAL(5, 2),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)  
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Doce', 'Pizzas com ingredientes doces'),
('Salgada', 'Pizzas com ingredientes salgados'),
('Vegetariana', 'Pizzas com ingredientes vegetarianos'),
('Vegana', 'Pizzas com ingredientes veganos'),
('Especial', 'Pizzas com ingredientes especiais');

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor, id_categoria) VALUES
('Margherita', 'Mussarela, majericão e azeite', 50.00, 2),
('Pepperoni', 'Pepperoni e mussarela', 60.00, 2),
('Quatro Queijos', 'Mix de quatro queijos', 70.00, 3),
('Frango com Catupiry', 'Frango e catupiry', 80.00, 2),
('Portuguesa', 'Presunto, ovos, cebolas, pimentões e azeitonas', 90.00, 5),
('Calabresa', 'Calabresa, cebola e azeitonas', 100.00, 2),
('Chocolate com Morango', 'Chocolate e morangos', 110.00, 1),
('Banana com Chocolate', 'Banana com Chocolate', 120.00, 1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Salgada';



