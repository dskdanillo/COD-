/*OT 2 - 3 Selecione a descrição do produto, preço do produto e descrição da categoria de todos os
produtos;*/

SELECT 
    p.descricao AS Produto,
    p.preco AS Preco,
    c.descricao AS Categoria
FROM produto p
INNER JOIN categoria c
ON p.idcategoria = c.idcategoria;