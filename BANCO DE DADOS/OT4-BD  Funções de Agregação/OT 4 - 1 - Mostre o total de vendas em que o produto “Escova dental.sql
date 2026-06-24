/*OT 4 - 1 - Mostre o total de vendas em que o produto “Escova dental” foi vendido.
Chame o resultado dessa consulta de “total_venda_escovas”;*/

SELECT SUM(vp.quantidade) AS total_venda_escovas      /*Utiliza a função SUM() para somar todos os valores da coluna quantidade.
                                                       resultado recebe o nome (alias) de total_venda_escovas.*/
                                                       
FROM vendas_has_produto vp                             /*Define a tabela vendas_has_produto como tabela principal da consulta.
                                                       O apelido vp é usado para facilitar a escrita.*/

INNER JOIN produto p									/*Junta a tabela produto à tabela vendas_has_produto.*/

    ON vp.idproduto = p.idproduto						/*Relaciona cada item vendido ao seu respectivo produto através do campo idproduto.*/

WHERE p.descricao = 'Escova dental';					/*Filtra apenas os registros referentes ao produto "Escova dental".*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

1. SELECT SUM(vp.quantidade) AS total_venda_escovas
SELECT: inicia a consulta e define o que será exibido no resultado.
SUM(vp.quantidade): função de agregação que soma todos os valores da coluna quantidade.
vp.quantidade: refere-se à coluna quantidade da tabela vendas_has_produto.
AS total_venda_escovas: cria um alias (nome temporário) para a coluna de resultado, que aparecerá como total_venda_escovas.

2. FROM vendas_has_produto vp
FROM: indica a tabela principal da consulta.
vendas_has_produto: tabela que registra quais produtos foram vendidos em cada venda.
vp: apelido (alias) da tabela para facilitar a escrita da consulta.

3. INNER JOIN produto p
INNER JOIN: une duas tabelas relacionadas.
produto: tabela que contém as informações dos produtos.
p: apelido da tabela produto.

4. ON vp.idproduto = p.idproduto
ON: define a condição da junção.
vp.idproduto: código do produto na tabela de vendas.
p.idproduto: código do produto na tabela produto.
Essa condição faz com que cada venda seja relacionada ao produto correto.

5. WHERE p.descricao = 'Escova dental'
WHERE: aplica um filtro nos registros.
p.descricao: coluna que contém a descrição do produto.
=: operador de comparação que verifica igualdade.
'Escova dental': valor procurado.

A consulta considera apenas as vendas do produto "Escova dental".