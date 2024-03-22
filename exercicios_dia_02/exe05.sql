CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Produtos para instalações elétricas'),
('Pintura', 'Produtos para pintura e acabamento'),
('Ferramentas', 'Ferramentas diversas'),
('Jardinagem', 'Produtos para jardinagem e paisagismo');

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor, id_categoria) VALUES
('Tubo PVC', 'Tubo de PVC 100mm', 50.00, 1),
('Fio Elétrico', 'Fio elétrico 2,5mm', 70.00, 2),
('Tinta Acrílica', 'Tinta acrílica 18L', 200.00, 3),
('Martelo', 'Martelo de unha', 30.00, 4),
('Mangueira Jardim', 'Mangueira para jardim 20m', 80.00, 5),
('Conduíte', 'Conduíte corrugado 25mm', 20.00, 2),
('Disjuntor', 'Disjuntor 30A', 15.00, 2),
('Vaso Planta', 'Vaso para plantas médio', 40.00, 5);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Elétrica';