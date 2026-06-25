/*OT 3 - 4 - Selecione todas as vendas que não sejam da categoria “Higiene pessoal’;*/

SELECT DISTINCT v.*
FROM vendas v
INNER JOIN vendas_has_produto vp
    ON v.idvenda = vp.idvenda
INNER JOIN produto p
    ON vp.idproduto = p.idproduto
INNER JOIN categoria c
    ON p.idcategoria = c.idcategoria
WHERE c.descricao <> 'Higiene pessoal';

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

A consulta utiliza INNER JOIN para relacionar as tabelas vendas, vendas_has_produto, produto e categoria. 
O relacionamento é feito pelos campos idvenda, idproduto e idcategoria. Após unir as tabelas, a cláusula 
WHERE c.descricao <> 'Higiene pessoal' filtra apenas as vendas cujos produtos pertencem a categorias 
diferentes de "Higiene pessoal". O comando DISTINCT é utilizado para evitar a repetição de 
vendas no resultado.*/