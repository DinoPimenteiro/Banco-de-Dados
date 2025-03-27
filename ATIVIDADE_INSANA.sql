-- Cria o banco de dados com nome loja_eletronicos
CREATE DATABASE IF NOT EXISTS loja_eletronicos;
USE loja_eletronicos;

-- Cria a tabela de produtos com os seguintes campos: id(auto incremento, chave primaria), nome, categoria, preço, quantidade_estoque.
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(8,2), -- Preço do produto
    quantidade_estoque INT -- Quantidade disponível em estoque
);

-- Insira 10 registros na tabela
INSERT INTO produtos (nome, categoria, preco, quantidade_estoque) VALUES
('Smartphone XYZ', 'Celulares', 1500.00, 10),
('Notebook ABC', 'Computadores', 3500.00, 5),
('Tablet 10 Polegadas', 'Tablets', 1200.00, 8),
('Fone de Ouvido Bluetooth', 'Acessórios', 250.00, 20),
('Smartwatch Pro', 'Wearables', 800.00, 15),
('Teclado Mecânico RGB', 'Periféricos', 400.00, 12),
('Mouse Gamer', 'Periféricos', 300.00, 18),
('Monitor 24 Polegadas', 'Monitores', 900.00, 7),
('Caixa de Som Portátil', 'Acessórios', 200.00, 25),
('Impressora Multifuncional', 'Impressão', 600.00, 3);

-- 1.	Selecione todos os dados da tabela produtos.
SELECT * FROM produtos ;
-- 2.	Liste apenas os nomes e preços dos produtos.
SELECT nome, preco FROM produtos;
-- 3.	Encontre os produtos com preço maior que 1000.00.
SELECT preco FROM produtos WHERE preco >= 1000;
-- 4.	Ordene os produtos por preço (do mais barato para o mais caro).
SELECT preco FROM produtos ORDER BY preco ASC;
-- 	5.	Liste os produtos com preço menor que 500.00.
SELECT preco FROM produtos WHERE preco <=500;
-- 6.	Encontre os produtos da categoria "Acessórios".
SELECT categoria FROM produtos; 
-- 7.	Selecione os produtos com quantidade em estoque maior que 10.
SELECT quantidade_estoque FROM produtos WHERE quantidade_estoque >=10;
-- 8.	Liste os produtos com preço entre 300.00 e 800.00.
SELECT preco FROM produtos WHERE preco >= 300 and preco <= 800;
-- 9.	Insira um novo produto na tabela.
INSERT INTO produtos (nome, categoria, preco, quantidade_estoque) VALUES
('Kwid', 'Carro', '70.000', '12');
-- 10.	Atualize o preço do "Smartphone XYZ" para 1600.00.
UPDATE produtos set preco=1600 WHERE nome= "Smartphone XYZ";
-- 11.	Exclua o produto "Impressora Multifuncional" da tabela.
DELETE FROM produtos WHERE nome =  "Impressora Multifuncional";
-- 12.	Adicione uma nova coluna marca à tabela produtos.
ALTER TABLE produtos ADD marca VARCHAR (100);
-- 13.	Ordene os produtos por nome em ordem alfabética.
SELECT nome FROM produtos ORDER BY nome; 
-- 14.	Liste os produtos da categoria "Periféricos", ordenados por preço (do mais caro para o mais barato).
SELECT categoria, preco FROM produtos WHERE categoria = "Periféricos" ORDER BY preco DESC;
-- 15.	Ordene os produtos por quantidade em estoque (do maior para o menor).
SELECT quantidade_estoque FROM produtos order by quantidade_estoque DESC;
-- 16.	Liste os produtos com preço maior que 1000.00, ordenados por nome.
SELECT nome, preco FROM produtos ORDER BY nome;
-- 17.	Liste os produtos com preço igual a 250.00 ou 800.00.
SELECT * FROM produtos WHERE preco = 250 or preco = 800;
-- 18.	Encontre o produto mais caro.
SELECT * FROM produtos WHERE preco ORDER BY preco desc limit 1;
-- 19.	Aumente o preço de todos os produtos em 5%.
UPDATE produtos SET preco = preco*1.05; 
-- 20.	Selecione os produtos que não têm quantidade em estoque definida (assumindo que alguns registros de quantidade estão como NULL
SELECT * FROM produtos WHERE quantidade_estoque = NULL;

