-- Criação do banco de dados para o cenário de E-commerce --
create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
    Fname Varchar(10),
    Minit char(3),
    Lname varchar(50),
    CPF char(11) not null,
    Address varchar(30),
	constraint unique_cpf_client unique (CPF)
    
);


-- criar tabela produto
create table product(
	idProduct int auto_increment primary key,
    Pname Varchar(10) not null,
    classification_kids bool default false,
    category enum('Eletrônico','Vestimentas','Binquedos','Alimentos','Móveis') not null,
	avaliacao float default 0,
    size varchar(10)
	
);
-- criar tabela pedido
create table pedido(
	idPedido int auto_increment primary key,
    idPedidoclient int,
    pedidoStatus enum('Cancelado','Confirmado','Em processamento') not null,
	pedidodescription varchar(255),
    sendvalue float,
	constraint fk_pedido_client foreign key (idPedidoclient) references cliente(idCliente)
);


-- criar tabela de pagamento --

create table payments(
	idCliente int,
    idPayment int,
    typePayment enum('Boleto','Cartão','Pix'),
    limitAvaliable float,
    primary key(idCliente, idPayment)
);