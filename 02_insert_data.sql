INSERT INTO CATEGORIA VALUES 
(1, 'Smartphones'),
(2, 'Notebooks'),
(3, 'Acessórios');

INSERT INTO PRODUTO VALUES
(1, 'iPhone 14', '128GB, Tela 6.1', 5999.90, 10, 1),
(2, 'Samsung S23', '256GB, Tela 6.6', 4299.00, 15, 1),
(3, 'Dell Inspiron 15', 'i5, 16GB RAM, 512 SSD', 3899.90, 7, 2),
(4, 'Carregador USB-C', '25W Turbo', 149.90, 40, 3);

INSERT INTO CLIENTE VALUES
(1, 'Lucas Andrade', 'lucas@gmail.com', '11988887777'),
(2, 'Mariana Costa', 'mariana.c@gmail.com', '11977776666');

INSERT INTO ENDERECO_ENTREGA VALUES
(1, 'Rua das Flores', '150', 'São Paulo', 'SP', '01010-000', 1),
(2, 'Av Paulista', '2070', 'São Paulo', 'SP', '01310-300', 2);

INSERT INTO PEDIDO VALUES
(100, '2024-10-01', 'Processando', 1),
(101, '2024-10-03', 'Enviado', 2);

INSERT INTO ITEM_PEDIDO VALUES
(100, 1, 1, 5999.90),
(100, 4, 2, 149.90),
(101, 3, 1, 3899.90);

INSERT INTO PAGAMENTO VALUES
(500, 'Cartão de Crédito', 6299.70, 'Aprovado', 100),
(501, 'PIX', 3899.90, 'Aprovado', 101);