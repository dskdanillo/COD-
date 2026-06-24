/*OT 3 - 4 -Selecione a descrição todas as categorias de produtos que foram vendidos;*/

SELECT DISTINCT c.descricao    /*Seleciona a descrição das categorias e o DISTINCT evita que categorias repetidas apareçam mais de uma vez no resultado.*/
FROM categoria c				/*Define a tabela categoria como tabela principal da consulta. O apelido c é usado para facilitar a escrita.*/
INNER JOIN produto p				/*Junta a tabela produto à tabela categoria.*/
    ON c.idcategoria = p.idcategoria			/*Relaciona cada categoria aos seus produtos através do campo idcategoria.*/
INNER JOIN vendas_has_produto vp				/*Junta a tabela vendas_has_produto à consulta.*/
    ON p.idproduto = vp.idproduto;				/*Relaciona os produtos às vendas em que eles foram vendidos através do campo idproduto.*/