/*OT 4 - 2 - Mostre o valor total da venda de id “2” 
(considere o preço dos produtos vendidos e sua quantidade)*/

SELECT SUM(p.preco * vp.quantidade) AS valor_total_venda   /*Calcula o valor total da venda, multiplicando o
															preço do produto pela quantidade vendida e somando todos os produtos da venda.*/

FROM vendas_has_produto vp									/*Define a tabela vendas_has_produto como tabela principal da consulta.*/

INNER JOIN produto p										/*Junta a tabela produto à tabela vendas_has_produto.*/
    
    ON vp.idproduto = p.idproduto				/*Relaciona cada produto vendido aos seus dados na tabela produto através do campo idproduto.*/

WHERE vp.idvenda = 2;							/*Filtra apenas os produtos que pertencem à venda de código 2.*/

