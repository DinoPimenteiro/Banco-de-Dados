CREATE DATABASE IF NOT EXISTS escola;
USE escola;


-------------------------------------------
CREATE TABLE alunos (
	id INT auto_increment primary key,
    nome varchar(50),
    idade INT,
    nota DECIMAL(4,2)
);

-------------------------------------------------
INSERT INTO alunos (nome, idade, nota) VALUES
('Eduardo Rios', 17,9.5),
('Wilian Lopes', 17,9.5),
('Tayna Ladroa', 18,1.5),
('Vinicius Pessoa', 15,8.2),
('Samuel Gomes',15,4.5),
('Emerson Ribeiro', 17,6.5), 
('Roberth Gomes', 16,6.5), 
('Elisangela Canoa', 15,6.5), 
('Patricio tupi', 17,6.5);


SELECT * FROM alunos;
SELECT nome  FROM alunos;
SELECT nome, nota  FROM alunos;
SELECT nome, nota FROM alunos where id = 5;
SELECT nome, nota From alunos WHERE nota >= 6;

UPDATE alunos SET nota = 10.0
WHERE nome = 'Willian Lopes';
