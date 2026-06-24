/*OT 4 - 8 - Apresente qual foi o produto mais vendido  e  nomeie de Total_de_Vendas;*/

SELECT produto.descricao,
       SUM(vendas_has_produto.quantidade) AS Total_de_Vendas   /*Seleciona a descrição do produto e soma todas as quantidades vendidas desse produto.*/
FROM produto													/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN vendas_has_produto									/*Junta a tabela vendas_has_produto à tabela produto.*/
    ON produto.idproduto = vendas_has_produto.idproduto			/*Relaciona cada produto aos registros de venda através do campo idproduto.*/
GROUP BY produto.descricao										/*Agrupa os registros pelo nome do produto.*/

ORDER BY Total_de_Vendas DESC									/*Ordena os resultados do maior para o menor valor de vendas.
																DESC = ordem decrescente.
																O produto mais vendido ficará na primeira posição.*/

LIMIT 1;														/*Exibe apenas o primeiro registro da lista ordenada.*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><


SELECT p.descricao, SUM(vp.quantidade) AS Total_de_Vendas
p.descricao: exibe o nome do produto.
SUM(vp.quantidade): soma todas as quantidades vendidas desse produto.
AS Total_de_Vendas: cria o nome da coluna solicitado na atividade.
FROM produto p
Define a tabela produto como principal.
p é o alias da tabela.
INNER JOIN vendas_has_produto vp
Relaciona os produtos às vendas realizadas.
ON p.idproduto = vp.idproduto
Faz a ligação entre o produto e os registros de venda.
GROUP BY p.descricao
Agrupa os registros por produto.
Permite calcular o total vendido de cada produto separadamente.
ORDER BY Total_de_Vendas DESC
Ordena os produtos do maior total vendido para o menor.
LIMIT 1
Exibe apenas o primeiro resultado, ou seja, o produto mais vendido.