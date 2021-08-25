create database Floricultura_Perfeito_Amor;
use Floricultura_Perfeito_Amor;

create table Cliente(
  idcliente INT NOT NULL AUTO_INCREMENT,
  nomecliente VARCHAR(45) NOT NULL,
  emailcliente VARCHAR(45) NOT NULL,
  telefonecliente VARCHAR(20) NOT NULL,
  enderecocliente VARCHAR(45) NOT NULL,
  cpf_cnpjcliente VARCHAR(20) NOT NULL,
  PRIMARY KEY (idcliente)
  );

create table Fornecedor (
  idfornecedor INT NOT NULL AUTO_INCREMENT,
  razaosocialfornecedor VARCHAR(45) NOT NULL,
  nomefornecedor VARCHAR(45) NOT NULL,
  enderecofornecedor VARCHAR(45) NOT NULL,
  telefonefornecedor VARCHAR(20) NOT NULL,
  cpf_cnpjfornecedor VARCHAR(20) NOT NULL,
  PRIMARY KEY (idfornecedor)
  );

create table Transportadora (
  idtransportadora INT NOT NULL AUTO_INCREMENT,
  razaosocialtransportadora VARCHAR(45) NOT NULL,
  nometransportadora VARCHAR(45) NOT NULL,
  enderecotransportadora VARCHAR(45) NOT NULL,
  telefonetransportadora VARCHAR(20) NOT NULL,
  cpf_cnpjtransportadora VARCHAR(20) NOT NULL,
  PRIMARY KEY (idtransportadora)
  );

create table TipoPagamento (
  idtipopagamento INT NOT NULL AUTO_INCREMENT,
  nometipopagamento VARCHAR(45) NOT NULL,
  descricaotipopagamento VARCHAR(65) NULL,
  PRIMARY KEY (idtipopagamento)
  );

create table CategoriaProduto (
  idcategoriaproduto INT NOT NULL AUTO_INCREMENT,
  nomecategoriaproduto VARCHAR(45) NOT NULL,
  descricaocategoriaproduto VARCHAR(45) NULL,
  PRIMARY KEY (idcategoriaproduto)
  );

create table Produto (
  idproduto INT NOT NULL AUTO_INCREMENT,
  nomeproduto VARCHAR(45) NOT NULL,
  descricaoproduto VARCHAR(200) NULL,
  idcategoriaproduto INT NOT NULL,
  valorproduto REAL(8,2) NULL,
  valorcompraproduto REAL(8,2) NULL,
  estoqueproduto INT NULL,
  PRIMARY KEY (idproduto),
  FOREIGN KEY(idcategoriaproduto)
    REFERENCES CategoriaProduto(idcategoriaproduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

create table Compra (
  idcompra INT NOT NULL AUTO_INCREMENT,
  datacompra DATETIME NOT NULL,
  idfornecedor INT NOT NULL,
  idtipopagamento INT NOT NULL,
  valortotal REAL(8,2) NULL,
  PRIMARY KEY (idcompra),
  FOREIGN KEY(idfornecedor)
    REFERENCES Fornecedor(idfornecedor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idtipopagamento)
    REFERENCES TipoPagamento(idtipopagamento)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

create table Compra_e_Produtos (
  idcompra INT NOT NULL,
  idproduto INT NOT NULL,
  quantidade INT NULL,
  valortotal REAL(8,2) NULL,
  PRIMARY KEY (idcompra, idproduto),
  FOREIGN KEY(idcompra)
    REFERENCES Compra(idcompra)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idproduto)
    REFERENCES Produto(idproduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION  
);

create table TipoVenda (
  idtipovenda INT NOT NULL AUTO_INCREMENT,
  nometipovenda VARCHAR(45) NOT NULL,
  descricaotipovenda VARCHAR(45) NULL,
  PRIMARY KEY (idtipovenda)
  );

create table Pedido (
  idpedido INT NOT NULL AUTO_INCREMENT,
  datapedido DATE NOT NULL,
  idcliente INT NOT NULL,
  idtipovenda INT NOT NULL,
  idtipopagamento INT NOT NULL,
  idtransportadora INT NULL,
  valortotalprodutos REAL(8,2) NULL,
  valorfrete REAL(8,2) NULL,
  valortotal REAL(8,2) GENERATED ALWAYS AS (COALESCE(valortotalprodutos + valorfrete,0)) VIRTUAL,
  PRIMARY KEY (idpedido),
  FOREIGN KEY (idcliente)
	REFERENCES Cliente (idcliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
  FOREIGN KEY (idtipovenda)
	REFERENCES TipoVenda (idtipovenda)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
  FOREIGN KEY (idtipopagamento)
	REFERENCES TipoPagamento (idtipopagamento)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
  FOREIGN KEY (idtransportadora)
	REFERENCES Transportadora (idtransportadora)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION	
);

create table Pedido_e_Produto (
  idpedido INT NOT NULL,
  idproduto INT NOT NULL,
  quantidade INT NULL,
  valortotal REAL(8,2) NULL,
  PRIMARY KEY (idpedido, idproduto),
  FOREIGN KEY (idproduto)
    REFERENCES Produto (idproduto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
  FOREIGN KEY (idpedido)
    REFERENCES Pedido (idpedido)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);