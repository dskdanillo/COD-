/*OT 3 - 2 Selecione a data das vendas onde o produto “Creme dental” tenha sido vendido;*/

SELECT vendas.data_venda			                         /*Seleciona apenas a coluna data_venda da tabela vendas.*/
FROM vendas							                         /*Define a tabela vendas como tabela principal da consulta.*/
INNER JOIN vendas_has_produto			                     /*Junta a tabela vendas com a tabela vendas_has_produto.*/
    ON vendas.idvenda = vendas_has_produto.idvenda           /*Relaciona cada venda aos produtos vendidos através do campo idvenda.*/
INNER JOIN produto											 /*Junta a tabela produto à consulta.*/
    ON vendas_has_produto.idproduto = produto.idproduto		 /*Relaciona os produtos vendidos com seus respectivos dados na tabela produto.*/
WHERE produto.descricao = 'Creme dental';					 /*Filtra pelo creme dental*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><
formato de select v.data_venda diferente do * ele vai mostrar somente a coluna de venda*/