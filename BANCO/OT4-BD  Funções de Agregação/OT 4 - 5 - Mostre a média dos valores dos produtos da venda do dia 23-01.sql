/*OT 4 - 5 - Mostre a média dos valores dos produtos da venda do dia 23/01. Chame o
resultado dessa consulta de “media_produtos”;*/

SELECT AVG(produto.preco * vendas_has_produto.quantidade) AS media_produtos  /*Utiliza a função AVG() para calcular a média dos valores dos produtos vendidos.*/
FROM vendas									             /*Define a tabela vendas como tabela principal da consulta.*/
INNER JOIN vendas_has_produto							/*Junta a tabela vendas_has_produto à tabela vendas.*/
    ON vendas.idvenda = vendas_has_produto.idvenda		/*Relaciona cada venda aos produtos vendidos através do campo idvenda.*/
INNER JOIN produto										/*Junta a tabela produto à consulta.*/
    ON vendas_has_produto.idproduto = produto.idproduto  /*Relaciona cada item vendido ao seu respectivo produto através do campo idproduto.*/
WHERE vendas.data_venda = '2021-01-23';					/*Filtra apenas as vendas realizadas no dia 23/01/2021.*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

A consulta utiliza a função de agregação AVG() para calcular a média do valor dos produtos vendidos na 
data 23/01/2021. Para isso, é realizado o cálculo preço × quantidade de cada produto da venda, e em seguida a 
função AVG() calcula a média desses valores. 
O resultado é exibido com o nome media_produtos, retornando aproximadamente 179,4.