CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
('Medicamentos', 'Produtos farmacêuticos para tratamento de saúde'),
('Higiene Pessoal', 'Produtos para higiene pessoal'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Suplementos', 'Suplementos alimentares e vitamínicos'),
('Produtos Naturais', 'Produtos naturais e orgânicos');

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor, id_categoria) VALUES
('Remédio para Infeccção', 'Remédio que atua no combate a infecção', 50.00, 1),
('Cotonetes', 'Para limpeza dos ouvidos', 10.00, 2),
('Shampoo Adcos', 'Sampoo indicado para tratamento da Dermatite', 149.99, 3),
('Way Protein', 'Proteína diária', 80.00, 4),
('Receita de folhas da Amazonia', 'Rceita nataural', 90.00, 5),
('Dorflex', 'Remédio para dor de cabeça', 6.99, 1),
('Papel Higiênico', 'papel higiênico', 24.99, 2),
('Sabonete Liquído Facial', 'Sabonete para limpeza facial', 119.99, 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Cosméticos';