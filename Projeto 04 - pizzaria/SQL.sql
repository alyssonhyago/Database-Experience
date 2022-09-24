-- id INT PRIMARY KEY AUTO_INCREMENT NOT NULL;

#Criando o banco de dados
CREATE DATABASE pizzaria;
USE pizzaria;
CREATE TABLE bordas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);
SELECT * FROM bordas;
CREATE TABLE massas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);
SELECT * FROM massas;

CREATE TABLE sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE pizzas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    borda_id INT nOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY (borda_id) REFERENCES  bordas(id),
	FOREIGN KEY (massa_id) REFERENCES  massas(id)
);
SELECT * FROM pizzas;

CREATE TABLE pizza_sabor(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
	sabor_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES  pizzas(id),
    FOREIGN KEY (sabor_id) REFERENCES  sabores(id)
);
SELECT * FROM pizza_sabor;

CREATE TABLE status(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)

);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES  pizzas(id),
    FOREIGN KEY (status_id) REFERENCES  status(id)
);

#Inserindo os dados 

INSERT INTO status (tipo) VALUES ("Em produção");
INSERT INTO status (tipo) VALUES ("Saiu para entrega ");
INSERT INTO status (tipo) VALUES ("Concluído");

INSERT INTO massas (tipo) VALUES ("Massa comum");
INSERT INTO massas (tipo) VALUES ("Massa integral");
INSERT INTO massas (tipo) VALUES ("Massa temperada");

INSERT INTO bordas (tipo) VALUES ("Cheddar");
INSERT INTO bordas (tipo) VALUES ("Catupiry");

INSERT INTO sabores (nome) VALUES ("Calabresa");
INSERT INTO sabores (nome) VALUES ("Lombinho");
INSERT INTO sabores (nome) VALUES ("Filé com cheddar");
INSERT INTO sabores (nome) VALUES ("Calabresa");
INSERT INTO sabores (nome) VALUES ("Marguerita");
INSERT INTO sabores (nome) VALUES ("Frango com catupiry");
SELECT * FROM sabores;


