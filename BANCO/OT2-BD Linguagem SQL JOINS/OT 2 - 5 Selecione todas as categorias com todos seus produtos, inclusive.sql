/*OT 2 - 5 Selecione todas as categorias com todos seus produtos, inclusive aquelas que não possuem
produto;*/

SELECT c.descricao AS Categoria,
       p.descricao AS Produto,
       p.preco
FROM categoria c
LEFT JOIN produto p
ON c.idcategoria = p.idcategoria;