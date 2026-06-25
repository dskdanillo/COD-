/*OT 3 - 1 - Selecione todos campos das vendas, onde o produto “Escova dental” 
tenha sido vendido;*/

SELECT vendas.*                                         /*Seleciona todas as colunas da tabela vendas.*/
FROM vendas		                                        /*Define a tabela vendas como tabela principal da consulta.*/
INNER JOIN vendas_has_produto							/*Junta a tabela vendas com a tabela vendas_has_produto.*/
    ON vendas.idvenda = vendas_has_produto.idvenda				/*Relaciona cada venda aos produtos vendidos através do campo idvenda.*/
INNER JOIN produto												/*Junta a tabela produto à consulta.*/
    ON vendas_has_produto.idproduto = produto.idproduto			/*Relaciona os produtos vendidos com seus respectivos dados na tabela produto.*/
WHERE produto.descricao = 'Escova dental';						/*Filtra apenas as vendas que possuem o produto "Escova dental"*/

/*<><><><><><><><><><><><><>< explicação: ><><><><><<><><><><><><><><><><><

  vendas → contém os dados das vendas.
  vendas_has_produto → relaciona vendas e produtos.
  produto → contém a descrição dos produtos.
  INNER JOIN → une as tabelas pelos campos relacionados.
  WHERE → filtra apenas o produto "Escova dental".*/