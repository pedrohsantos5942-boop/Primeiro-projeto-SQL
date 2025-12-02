CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);
CREATE TABLE ENDERECO_ENTREGA (
    id_endereco INT PRIMARY KEY,
    rua VARCHAR(150),
    numero VARCHAR(20),
    cidade VARCHAR(80),
    estado VARCHAR(2),
    cep VARCHAR(10),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(30),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE ITEM_PEDIDO (
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
);
CREATE TABLE PAGAMENTO (
    id_pagamento INT PRIMARY KEY,
    forma VARCHAR(30),
    valor DECIMAL(10,2),
    status VARCHAR(30),
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido)
);