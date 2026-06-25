/*OT 2 - 2 
Selecione apenas o preço de todos os produtos da tabela produto e a descrição de sua
categoria, cuja categoria seja “Limpeza”;*/

SELECT p.preco, c.descricao   /*Seleciona:
								p.preco → preço do produto.
								c.descricao → descrição da categoria.*/

FROM produto p					/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN categoria c			/*Junta a tabela categoria à tabela produto.*/
ON p.idcategoria = c.idcategoria			/*Relaciona cada produto à sua categoria através do campo idcategoria.*/
WHERE c.descricao = 'Limpeza';				/*Filtra apenas os produtos que pertencem à categoria Limpeza.*/
