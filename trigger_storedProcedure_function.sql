-- Trigger para colocar a quantidade de produtos comprados no estoque na tabela Produto
delimiter |
create trigger quantidade_estoque_mediante_compra_trigger
after insert on Compra_e_Produtos
for each ROW
begin
	update Floricultura_Perfeito_Amor.Produto set estoqueproduto = estoqueproduto + new.quantidade
		where Floricultura_Perfeito_Amor.Produto.idproduto = new.idproduto;
end
|
delimiter ;

-- Trigger para calcular o valor total de cada item da tabela Compra_e_Produtos
delimiter |
create trigger compra_produto_multiplica_pela_quantidade_trigger
before insert on Compra_e_Produtos
for each ROW
begin
	set new.valortotal=new.quantidade*(select valorcompraproduto from Produto where idProduto=new.idProduto);
end
|
delimiter ;

-- Stored Procedure para somar os valores de todos os totais dos produtos da tabela Compra_e_Produtos e colocar na tabela Compra
delimiter |
create procedure soma_compra_e_produtos_procedure(in id integer)
begin
select sum(valortotal) into @valortotal 
	from Floricultura_Perfeito_Amor.Compra_e_Produtos 
    where Floricultura_Perfeito_Amor.Compra_e_Produtos.idcompra = id;
SET SQL_SAFE_UPDATES = 0;
update Floricultura_Perfeito_Amor.Compra set valortotal= (@valortotal) where Floricultura_Perfeito_Amor.Compra.idcompra = id;
SET SQL_SAFE_UPDATES = 1;
end
|
delimiter ;

-- Trigger para quando uma Compra for excluída, ser excluído também na tabela Compra_e_Produtos
delimiter |
create trigger compra_produto_trigger
before delete on Compra
for each ROW
begin
delete from Compra_e_Produtos where idcompra = old.idcompra;
end
|
delimiter ;

-- Trigger para quando uma Compra for excluída, a quantidade do item ser decrementada no estoque da tabela Produto
delimiter |
create trigger quantidade_estoque_mediante_exclusao_compra_trigger
after delete on Compra_e_Produtos
for each ROW
begin
	update Floricultura_Perfeito_Amor.Produto set estoqueproduto = estoqueproduto - old.quantidade
		where Floricultura_Perfeito_Amor.Produto.idproduto = old.idproduto;
end
|
delimiter ;

-- Trigger para calcular o valor total de cada item da tabela Pedido_e_Produto
delimiter |
create trigger pedido_produto_multiplica_pela_quantidade_trigger
before insert on Pedido_e_Produto
for each ROW
begin
	set new.valortotal=new.quantidade*(select valorproduto from Produto where idProduto=new.idProduto);
end
|
delimiter ;

-- Stored Procedure para somar os valores de todos os totais dos produtos da tabela Pedido_e_Produto e colocar na tabela Pedido
delimiter |
create procedure soma_pedido_e_produto_procedure(in id integer)
begin
select sum(valortotal) into @valortotal from Pedido_e_Produto where Floricultura_Perfeito_Amor.Pedido_e_Produto.idpedido = id;
SET SQL_SAFE_UPDATES = 0;
if (@valortotal > 0.00) then
update Floricultura_Perfeito_Amor.Pedido set valortotalprodutos= (@valortotal) where  Floricultura_Perfeito_Amor.Pedido.idPedido = id;
SET SQL_SAFE_UPDATES = 1;
else DELETE FROM Pedido WHERE idPedido = id;
end if;
end
|
delimiter ;

-- Trigger para quando um Pedido for excluído, ser excluído também na tabela Pedido_e_Produto
delimiter |
create trigger pedido_produto_trigger
before delete on Pedido
for each ROW
begin
delete from Pedido_e_Produto where idpedido = old.idpedido;
end
|
delimiter ;

-- Trigger para quando um pedido for excluído, a quantidade do item ser adicionado no estoque da tabela Produto
delimiter |
create trigger quantidade_estoque_mediante_exclusao_pedido_trigger
after delete on Pedido_e_Produto
for each ROW
begin
	update Floricultura_Perfeito_Amor.Produto set estoqueproduto = estoqueproduto + old.quantidade
		where Floricultura_Perfeito_Amor.Produto.idproduto = old.idproduto;
end
|
delimiter ;

-- Trigger para quando um pedido for finalizado, a quantidade do item será decrementado no estoque da tabela Produto
delimiter |
create trigger quantidade_estoque_mediante_pedido_finalizado_trigger
after insert on Pedido_e_Produto
for each ROW
begin
	update Floricultura_Perfeito_Amor.Produto set estoqueproduto = estoqueproduto - new.quantidade
		where Floricultura_Perfeito_Amor.Produto.idproduto = new.idproduto;
end
|
delimiter ;

-- Function para aceitar ou não o produto no pedido - levando em conta se há ou não o produto em estoque
DELIMITER //
CREATE FUNCTION VerificaEstoque(idpedido INT, idproduto int, quantidade int)
  RETURNS VARCHAR(500)
  BEGIN
    DECLARE resposta VARCHAR(500);    
    IF quantidade < (SELECT Floricultura_Perfeito_Amor.Produto.estoqueproduto FROM Produto WHERE Floricultura_Perfeito_Amor.Produto.idproduto = idproduto) THEN INSERT INTO Pedido_e_Produto (idPedido,idProduto,quantidade) VALUES(idpedido,idproduto,quantidade); SET resposta = 'INSERIDO';
    ELSE SET resposta = 'Estoque Insuficiente';
    END IF;
    RETURN resposta;
  END //
DELIMITER ;