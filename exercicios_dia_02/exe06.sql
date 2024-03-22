CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100),
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT,
    nome_curso VARCHAR(100),
    descricao_curso VARCHAR(255),
    valor DECIMAL(5, 2),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Java', 'Cursos relacionados à linguagem de programação Java'),
('Python', 'Cursos relacionados à linguagem de programação Python'),
('Web Development', 'Cursos relacionados ao desenvolvimento web'),
('Data Science', 'Cursos relacionados à ciência de dados'),
('Design', 'Cursos relacionados ao design gráfico e UX');

INSERT INTO tb_cursos (nome_curso, descricao_curso, valor, id_categoria) VALUES
('Java Básico', 'Curso básico de Java para iniciantes', 500.00, 1),
('Python Avançado', 'Curso avançado de Python', 700.00, 2),
('HTML e CSS', 'Curso de HTML e CSS para iniciantes', 400.00, 3),
('JavaScript', 'Curso de JavaScript para iniciantes', 600.00, 3),
('Data Science com R', 'Curso de ciência de dados usando R', 800.00, 4),
('Machine Learning', 'Curso de aprendizado de máquina', 1000.00, 4),
('Design Gráfico', 'Curso de design gráfico usando Adobe Suite', 600.00, 5),
('UX Design', 'Curso de design de experiência do usuário', 700.00, 5);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Java';
