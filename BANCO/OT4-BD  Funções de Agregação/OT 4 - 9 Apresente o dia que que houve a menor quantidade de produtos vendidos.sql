/*OT 4 - 9 Apresente o dia que que houve a menor quantidade de produtos vendidos
(menos se vendeu)*/

SELECT vendas.idvenda,
       vendas.data_venda,
       SUM(vendas_has_produto.quantidade) AS Total_Vendido  /*idvenda → código da venda.
															  data_venda → data da venda.
															  SUM(vendas_has_produto.quantidade) → soma das quantidades de produtos vendidos 
                                                              nessa venda.
															  O resultado da soma recebe o nome (alias) de Total_Vendido.*/
       
FROM vendas    												  /*Define a tabela vendas como tabela principal da consulta.*/
INNER JOIN vendas_has_produto								  /*Junta a tabela vendas_has_produto à tabela vendas.*/
    ON vendas.idvenda = vendas_has_produto.idvenda			  /*Relaciona cada venda aos produtos vendidos através do campo idvenda.*/
GROUP BY vendas.idvenda, vendas.data_venda					  /*Agrupa os registros por venda.
															  Dessa forma, a soma das quantidades é calculada separadamente para cada venda.*/

ORDER BY Total_Vendido ASC									/*Ordena os resultados do menor para o maior total vendido.
															ASC = ordem crescente.
															A venda com a menor quantidade de produtos ficará na primeira posição.*/
LIMIT 1;													/*Exibe apenas o primeiro registro da lista ordenada.*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

SELECT
SELECT v.idvenda,
       v.data_venda,
       SUM(vp.quantidade) AS Total_Vendido
v.idvenda: exibe o código da venda.
v.data_venda: exibe a data da venda.
SUM(vp.quantidade): soma a quantidade de produtos vendidos.
AS Total_Vendido: nomeia a coluna do resultado.
FROM vendas v
Define a tabela vendas como principal.
v é o alias da tabela.
INNER JOIN vendas_has_produto vp
Relaciona as vendas aos produtos vendidos.
ON v.idvenda = vp.idvenda
Faz a ligação entre as tabelas.
GROUP BY v.idvenda, v.data_venda
Agrupa os registros por venda.
Necessário porque estamos usando a função de agregação SUM().
ORDER BY Total_Vendido ASC
Ordena do menor total vendido para o maior.
LIMIT 1
Retorna apenas a venda com a menor quantidade de produtos vendidos.