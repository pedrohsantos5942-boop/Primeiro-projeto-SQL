SELECT nome, preco FROM PRODUTO ORDER BY preco DESC;
SELECT P.id_pedido, P.data, C.nome FROM PEDIDO P JOIN CLIENTE C ON P.id_cliente = C.id_cliente;
SELECT nome, preco FROM PRODUTO WHERE preco > 2000;
SELECT I.id_pedido, PR.nome, I.quantidade FROM ITEM_PEDIDO I JOIN PRODUTO PR ON I.id_produto = PR.id_produto WHERE I.id_pedido = 100;
SELECT id_pedido, valor FROM PAGAMENTO;