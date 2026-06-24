/*OT 3 - 3 - Selecione somente a descrição dos produtos da venda que 
ocorreu no dia “23/01”;*/

SELECT produto.descricao
FROM produto
INNER JOIN vendas_has_produto
    ON produto.idproduto = vendas_has_produto.idproduto
INNER JOIN vendas
    ON vendas_has_produto.idvenda = vendas.idvenda
WHERE vendas.data_venda = '2021-01-23';