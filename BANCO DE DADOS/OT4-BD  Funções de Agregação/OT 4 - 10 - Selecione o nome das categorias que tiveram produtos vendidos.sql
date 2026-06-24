/*OT 4 - 10 - Selecione o nome das categorias que tiveram produtos vendidos*/


SELECT DISTINCT
       produto.idproduto,
       categoria.descricao AS categoria			 /*idproduto → código do produto.
												categoria.descricao → nome da categoria do produto.
												O comando DISTINCT evita que registros repetidos apareçam no resultado.
												A coluna categoria.descricao será exibida com o nome categoria.*/

FROM produto									/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN categoria							/*Junta a tabela categoria à tabela produto.*/
    
    ON produto.idcategoria = categoria.idcategoria   /*Relaciona cada produto à sua categoria através do campo idcategoria.*/

INNER JOIN vendas_has_produto							/*Junta a tabela vendas_has_produto à consulta.*/
    
    ON produto.idproduto = vendas_has_produto.idproduto	/*Relaciona os produtos aos registros de vendas através do campo idproduto.
														Assim, apenas produtos que foram vendidos serão considerados.*/
    
ORDER BY produto.idproduto;							/*Ordena o resultado pelo código do produto em ordem crescente.*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

A consulta passou a funcionar corretamente após a utilização da cláusula DISTINCT, que 
elimina registros duplicados do resultado. Como um mesmo produto pode aparecer em várias vendas na 
tabela vendas_has_produto, o INNER JOIN pode gerar linhas repetidas. O DISTINCT garante que cada 
combinação de produto e categoria 
seja exibida apenas uma vez, produzindo o resultado esperado.