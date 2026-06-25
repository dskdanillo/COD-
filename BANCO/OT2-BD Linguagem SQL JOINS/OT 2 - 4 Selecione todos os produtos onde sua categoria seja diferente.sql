/*OT 2 - 4 Selecione todos os produtos onde sua categoria seja diferente de “frios e laticínios”.*/

SELECT p.*
FROM produto p
INNER JOIN categoria c
ON p.idcategoria = c.idcategoria
WHERE c.descricao <> 'Frios e Laticínios';
