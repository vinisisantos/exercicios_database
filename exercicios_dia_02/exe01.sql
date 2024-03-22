CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT,
    nome_classe VARCHAR(100),
    descricao_classe VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome_personagem VARCHAR(100),
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)  -- 3. Foreign Key da tabela tb_classes na tabela tb_personagens
);

INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
('Arqueiro', 'distância'),
('Guerreiro', 'combate corpo a corpo'),
('Mago', 'feitiços'),
('Paladino', 'defesa e cura'),
('Assassino', 'ataques furtivos e rápidos');

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, id_classe) VALUES
('Argoth', 2500, 1500, 1),
('Elysia', 2200, 1800, 2),
('Thalion', 2000, 2000, 3),
('Seraphine', 1800, 2200, 4),
('Drakon', 1500, 2500, 5),
('Lyra', 3000, 1000, 1),
('Zephyr', 1000, 3000, 2),
('Calista', 3500, 500, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Usamos o operador LIKE para fazer uma busca pelos dados com a letra escolhida, no nosso caso a letra C 
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- Os dados da tabela tb_personagens vai ser unido com a tabela nome_personagem sem especificidade. 
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

-- Usamos INNER JOIN para fazer a união dos dados da table tb_personagens com os dados da tablea tb_classes, onde será pego apenas os personagens da classe Arqueiro por exemplo.
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome_classe = 'Arqueiro';

