-- DML

INSERT INTO Cliente VALUES(1, 'Consumidor Final', 'sememail@gmailcom', '35955554444', 'Rua Sem Cadastro - 000', 11111111111);
INSERT INTO Cliente VALUES(2, 'Hemili Beatriz Alves Trindade', 'hemilibeatriz@gmailcom', '35997084333', 'Rua Francisco Antonio de Melo - 480', 12362594670);
INSERT INTO Cliente VALUES(3, 'Mallu Beatriz Alves Trindade', 'mallubeatriz@gmailcom', '35991889925', 'Rua Francisco Antonio de Melo - 480', 12345678910);
INSERT INTO Cliente VALUES(4, 'Lourença Beatriz Alves', 'lourencabeatriz@gmailcom', '35999584876', 'Rua Francisco Antonio de Melo - 480', 10987654321);
INSERT INTO Cliente VALUES(5, 'Esmael Alves Trindade', 'esmaeltrindade@gmailcom', '35991052651', 'Rua Francisco Antonio de Melo - 480', 12312312312);
INSERT INTO Cliente VALUES(6, 'Rubens Ferreira Lacerda Neto', 'rubensneto@gmailcom', '35992736685', 'Rua dos Amores Perdidos - 27', 11122233345);
INSERT INTO Cliente VALUES(7, 'Filomena Whaterson', 'filozinha@gmailcom', '35992331067', 'Rua dos Gatôncios - 100', 55562387492);
INSERT INTO Cliente VALUES(8, 'J Flores', 'jflores@gmailcom', '35997526489', 'Rua dos Abacates - 2000', 11109876543210);
INSERT INTO Cliente VALUES(9, 'Rosa Margarida', 'rosarida@gmailcom', '35999225576', 'Rua Favo de Mel - 45', 41526378932);
INSERT INTO Cliente VALUES(10, 'Candido Marques Alves', 'candinho@gmailcom', '35991426596', 'Rua dos Achados e Perdidos - 1', 36498524762);
INSERT INTO Cliente VALUES(11, 'Nina Guedes', 'guedesnina@gmailcom', '35997336541', 'Rua Caminho da Roça - 30', 33352698465);

INSERT INTO Fornecedor VALUES(1, 'Próprio', 'Proprietária', 'Rua Francisco Antonio de Melo - 480', '3535537071', 14765898512145);
INSERT INTO Fornecedor VALUES(2, 'Flores Diversas Eireli - Me', 'Rômulo Oliveira', 'Rua 30 de Abril - 57', '3535517071', 12365489740250);
INSERT INTO Fornecedor VALUES(3, 'Substrato Mococa Eireli - Me', 'João Alves ', 'Rua Laranjeiras', '3535548762', 54796512584451);
INSERT INTO Fornecedor VALUES(4, 'Vasos Divertidos Eireli - Me', 'Rodolfo José', 'Rua Sertão do País', '3147526533', 14765898512);
INSERT INTO Fornecedor VALUES(5, 'Adubos Horta Feliz Eireli - Me', 'Jó dos Santos', 'Rua Damascena', '353547519568', 12784362594158);
INSERT INTO Fornecedor VALUES(6, 'Flores Holambra Eireli - Me', 'Jonas Nínive', 'Rua Aqui e Agora', '3539657455', 12487536921452);
INSERT INTO Fornecedor VALUES(7, 'Garden Tem de Tudo Eireli - Me', 'Flor dos Reis', 'Rua Flor de Maio', '3535514121', 54796523584695);

INSERT INTO Transportadora VALUES(1, 'Empresa Brasileira de Correios e Telégrafos', 'Correios', 'Rua das Entregas', '3535531465', 34028316002742);
INSERT INTO Transportadora VALUES(2, 'Transportadora Paulineris Eireli - Me', 'Paulineris', 'Rua das Encomendas', '3535546585', 43028316142000);
INSERT INTO Transportadora VALUES(3, 'Empresa Brasileira de Transportes', 'Transportadora Trindade', 'Rua das Flores', '3532164155', 45862574698);

INSERT INTO TipoPagamento VALUES (1, 'À Vista','Recebimento Imediato no caixa da loja');
INSERT INTO TipoPagamento VALUES (2, 'Cartão de Débito','Recebimento Imediato na conta do banco');
INSERT INTO TipoPagamento VALUES (3, 'Cartão de Crédito','Recebimento na conta do banco daqui 30 dias');
INSERT INTO TipoPagamento VALUES (4, 'Cartão de Crédito Parcelado','Recebimento na conta do banco daqui a 30 e 60 dias');

INSERT INTO CategoriaProduto VALUES (1, 'Flor', 'Flores Naturais');
INSERT INTO CategoriaProduto VALUES (2, 'Vaso', 'Vasos para plantas');
INSERT INTO CategoriaProduto VALUES (3, 'Substrato', 'Substratos para plantas');
INSERT INTO CategoriaProduto VALUES (4, 'Adubo', 'Adubos para plantas em geral');

INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (1, 'Amarílis', 'Flor fácil de cuidar. Adaptam a diversos tipos de clima, mas, no inverno ela pode perder suas folhas.Também é conhecida como flor-da-imperatriz.', 1, 45.00, 20.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (2, 'Amor Perfeito', 'Podem ser cultivadas tanto em jardins de inverno quanto em vasos.', 1, 20.00, 8.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (3, 'Azaléia', 'Se adaptam bem ao frio, porém, são tóxicas.', 1, 30.00, 20.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (4, 'Ciclame', 'Muito utilizadas em jardim de inverno e se adaptam muito bem ao frio.', 1, 45.00, 25.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (5, 'Flor de Maio', 'Também é conhecida por outros nome de flores como flor-de-seda e cacto-de-natal.', 1, 35.00, 15.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (6, 'Hortência', 'Conhecida como Rosa-do-Japão.Gostam de frio e devem ser cultivadas em regiões de altitude', 1, 50.00, 35.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (7, 'Lírio do Campo', 'Plantas muito perfumadas.', 1, 75.00, 45.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (8, 'Lavanda', 'Flor com muitas funções: como aromático, medicinal e culinário.', 1, 35.00, 15.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (9, 'Rosa do Deserto', 'Plantas suculentas originárias no Oriente Médio e na África.', 1, 45.00, 22.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (10, 'Barro 30', 'Vaso de Barro com 30cm de largura.', 2, 10.00, 3.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (11, 'Plástico 30', 'Vaso de Plástico com 30cm de largura.', 2, 6.00, 2.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (12, 'Barro 60', 'Vaso de Barro com 60cm de largura.', 2, 20.00, 6.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (13, 'Plástico 60', 'Vaso de Plástico com 60cm de largura.', 2, 12.00, 4.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (14, 'Rosa do Deserto', 'Substrato Próprio para Rosa do Deserto e outras suculentas.', 3, 8.00, 2.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (15, 'Terra Vegetal', 'Terra vegetal para horta, vasos de plantas e jardins', 3, 5.00, 2.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (16, 'Húmus de Minhoca', 'Substrato com composto de húmus de minhoca.', 3, 8.00, 3.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (17, 'Ouro Verde', 'Adubo para plantas em geral (hortas e plantas ornamentais).', 4, 15.00, 9.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (18, 'Farinha de Osso', 'Adubo à base de osso para plantas, obs: é venenoso (alertar sobre animais e crianças).', 4, 12.00, 7.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (19, 'Bokashi', 'Alimento completo para plantas em geral.', 4, 20.00, 8.00, 0);
INSERT INTO Produto (idproduto,nomeproduto,descricaoproduto,idcategoriaproduto,valorproduto,valorcompraproduto,estoqueproduto) VALUES (20, 'Orgânico Carruchel', 'Casca de pinus decomposta, cama de peru e pó de rocha.', 4, 10.00, 4.00, 0);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (1, '20210522', 2, 1);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(1,1,1);
call soma_compra_e_produtos_procedure(1);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (2, '20210522', 2, 1);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(2,3,5);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(2,9,2);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(2,2,2);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(2,1,2);
call soma_compra_e_produtos_procedure(2);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (3, '20210522', 3, 2);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(3,16,12);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(3,15,32);
call soma_compra_e_produtos_procedure(3);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (4, '20210523', 3, 2);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(4,14,25);
call soma_compra_e_produtos_procedure(4);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (5, '20210523', 4, 3);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(5,10,30);
call soma_compra_e_produtos_procedure(5);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (6, '20210524', 7, 3);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(6,5,1);
call soma_compra_e_produtos_procedure(6);

INSERT INTO Compra (idcompra,datacompra,idfornecedor,idtipopagamento) VALUES (7, '20210524', 7, 1);
INSERT INTO Compra_e_Produtos (idcompra,idproduto,quantidade) VALUES(7,11,10);
call soma_compra_e_produtos_procedure(7);

INSERT INTO TipoVenda VALUES(1,'Presencial','Venda efetuada na Floricultura');
INSERT INTO TipoVenda VALUES(2,'Online','Venda efetuada pelo site');

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(1,20210524,2,1,1,NULL,0,0);
Select VerificaEstoque(1,7,1);
Select VerificaEstoque(1,12,1);
Select VerificaEstoque(1,15,1);
call soma_pedido_e_produto_procedure(1); 

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(2,20210524,1,2,3,'1',0,20.00);
Select VerificaEstoque(2,1,2);
Select VerificaEstoque(2,15,2);
Select VerificaEstoque(2,16,1);
Select VerificaEstoque(2,1,2);
Select VerificaEstoque(2,17,2);
call soma_pedido_e_produto_procedure(2);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(3,20210524,3,1,2,NULL,0,0);
Select VerificaEstoque(3,1,2);
call soma_pedido_e_produto_procedure(3);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(4,20210524,2,2,4,'2',0,15.00);
Select VerificaEstoque(4,19,2);
Select VerificaEstoque(4,20,1);
call soma_pedido_e_produto_procedure(4);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(5,20210524,3,2,3,'2',0,30.00);
Select VerificaEstoque(5,6,1);
Select VerificaEstoque(5,9,1);
Select VerificaEstoque(5,15,1);
call soma_pedido_e_produto_procedure(5);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(6,20210524,10,1,2,NULL,0,0);
Select VerificaEstoque(6,6,1);
Select VerificaEstoque(6,3,1);
call soma_pedido_e_produto_procedure(6);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(7,20210525,5,2,4,'3',0,50.00);
Select VerificaEstoque(7,7,2);
Select VerificaEstoque(7,17,2);
Select VerificaEstoque(7,2,1);
call soma_pedido_e_produto_procedure(7);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(8,20210525,9,2,4,'1',0,20.00);
Select VerificaEstoque(8,12,3);
call soma_pedido_e_produto_procedure(8);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(9,20210525,8,1,1,NULL,0,0);
Select VerificaEstoque(9,7,1);
Select VerificaEstoque(9,17,1);
call soma_pedido_e_produto_procedure(9);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(10,20210526,4,2,3,'2',0,15.00);
Select VerificaEstoque(10,4,1);
Select VerificaEstoque(10,5,1);
Select VerificaEstoque(10,8,1);
Select VerificaEstoque(10,15,1);
call soma_pedido_e_produto_procedure(10);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(11,20210527,4,1,2,NULL,0,0);
Select VerificaEstoque(11,9,1);
Select VerificaEstoque(11,5,1);
Select VerificaEstoque(11,2,1);
call soma_pedido_e_produto_procedure(11);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(12,20210527,6,1,2,NULL,0,0);
Select VerificaEstoque(12,7,1);
Select VerificaEstoque(12,6,1);
Select VerificaEstoque(12,15,1);
call soma_pedido_e_produto_procedure(12);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(13,20210527,7,2,4,'3',0,20.00);
Select VerificaEstoque(13,4,1);
Select VerificaEstoque(13,10,1);
call soma_pedido_e_produto_procedure(13);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(14,20210527,2,2,3,'3',0,32.00);
Select VerificaEstoque(14,7,1);
Select VerificaEstoque(14,2,1);
Select VerificaEstoque(14,15,1);
call soma_pedido_e_produto_procedure(14);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(15,20210527,6,2,3,'2',0,20.00);
Select VerificaEstoque(15,7,2);
Select VerificaEstoque(15,11,2);
Select VerificaEstoque(15,14,1);
Select VerificaEstoque(15,17,2);
Select VerificaEstoque(15,6,1);
call soma_pedido_e_produto_procedure(15);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(16,20210528,3,2,4,'1',0,15.00);
Select VerificaEstoque(16,9,2);
Select VerificaEstoque(16,12,2);
Select VerificaEstoque(16,8,1);
Select VerificaEstoque(16,15,1);
call soma_pedido_e_produto_procedure(16);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(17,20210528,8,2,4,'1',0,20.00);
Select VerificaEstoque(17,6,1);
Select VerificaEstoque(17,7,1);
Select VerificaEstoque(17,10,4);
call soma_pedido_e_produto_procedure(17);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(18,20210528,7,1,1,NULL,0,0);
Select VerificaEstoque(18,13,1);
Select VerificaEstoque(18,18,1);
Select VerificaEstoque(18,11,1);
Select VerificaEstoque(18,17,2);
Select VerificaEstoque(18,2,1);
Select VerificaEstoque(18,15,1);
call soma_pedido_e_produto_procedure(18);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(19,20210529,1,1,2,NULL,0,0);
Select VerificaEstoque(19,8,1);
call soma_pedido_e_produto_procedure(19);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete) VALUES(20,20210529,9,1,3,NULL,0,0);
Select VerificaEstoque(20,7,1);
Select VerificaEstoque(20,19,1);
Select VerificaEstoque(20,15,1);
call soma_pedido_e_produto_procedure(20);

INSERT INTO Pedido (idpedido,datapedido,idcliente,idtipovenda,idtipopagamento,idtransportadora,valortotalprodutos,valorfrete)VALUES(21,20210529,9,1,3,NULL,0,0);
Select VerificaEstoque(21,7,1);
Select VerificaEstoque(21,19,1);
Select VerificaEstoque(21,15,1);
call soma_pedido_e_produto_procedure(21);