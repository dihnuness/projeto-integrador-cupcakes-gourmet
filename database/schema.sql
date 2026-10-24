CREATE DATABASE cupcakes_gourmet;

USE cupcakes_gourmet;

CREATE TABLE cliente(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE cupcake(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    preco DECIMAL(10,2)
);

CREATE TABLE pedido(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    cliente_id BIGINT,
    status VARCHAR(50),
    valor_total DECIMAL(10,2),
    FOREIGN KEY(cliente_id) REFERENCES cliente(id)
);

CREATE TABLE pagamento(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    pedido_id BIGINT,
    tipo VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY(pedido_id) REFERENCES pedido(id)
);

CREATE TABLE entrega(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    pedido_id BIGINT,
    status VARCHAR(50),
    codigo_rastreio VARCHAR(100),
    FOREIGN KEY(pedido_id) REFERENCES pedido(id)
);