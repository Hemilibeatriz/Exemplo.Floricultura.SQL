-- Questões Estratégicas a serem tratadas
-- Quantidade de itens e valor vendido por categoria?
SELECT Produto.idcategoriaproduto AS ID_Categoria_Produto, sum(Pedido_e_Produto.quantidade) AS Quantidade_Vendida, sum(Pedido_e_Produto.valortotal) as Valor_Total
FROM Pedido_e_Produto
INNER JOIN Produto ON Pedido_e_Produto.idproduto = Produto.idproduto
INNER JOIN CategoriaProduto ON Produto.idcategoriaproduto = CategoriaProduto.idcategoriaproduto
GROUP BY CategoriaProduto.idcategoriaproduto ORDER BY Quantidade_Vendida DESC;

select * from pedido_e_produto;

-- Qual o produto mais vendido?
CREATE VIEW Mais_Vendidos AS
SELECT Produto.idproduto AS ID_Produto, CategoriaProduto.idcategoriaproduto AS ID_Categoria, Produto.nomeproduto AS Nome_Produto, SUM(Pedido_e_Produto.quantidade) AS Quantidade_Vendida
FROM Pedido_e_Produto
INNER JOIN Produto ON Pedido_e_Produto.idproduto = Produto.idproduto
inner join categoriaproduto on categoriaproduto.idcategoriaproduto = produto.idcategoriaproduto
GROUP BY Pedido_e_Produto.idproduto ORDER BY Quantidade_Vendida DESC;

SELECT ID_Produto, ID_Categoria, Nome_Produto, Quantidade_Vendida AS Quantidade 
FROM Mais_Vendidos
INNER JOIN Produto ON Mais_Vendidos.nome_produto = Produto.nomeproduto
INNER JOIN CategoriaProduto ON CategoriaProduto.idcategoriaproduto = Produto.idcategoriaproduto
WHERE Quantidade_Vendida = (SELECT MAX(Quantidade_Vendida) FROM Mais_Vendidos);