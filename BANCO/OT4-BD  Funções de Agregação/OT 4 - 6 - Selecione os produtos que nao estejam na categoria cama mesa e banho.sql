/*OT 4 - 6 - Selecione os produtos que não estejam na categoria “cama, mesa e banho” e
“limpeza”*/


SELECT produto.*			/*Seleciona todas as colunas da tabela produto.*/
FROM produto				/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN categoria				/*Junta a tabela categoria à tabela produto.*/
    ON produto.idcategoria = categoria.idcategoria    /*Relaciona cada produto à sua respectiva categoria através do campo idcategoria.*/
WHERE categoria.descricao <> 'Cama, mesa e banho'     /*Filtra os produtos que não pertencem à categoria Cama, mesa e banho.*/
  AND categoria.descricao <> 'Limpeza';					/*Filtra também os produtos que não pertencem à categoria Limpeza*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

Explicação linha por linha
SELECT p.*
SELECT: inicia a consulta.
p.*: exibe todos os campos da tabela produto.
FROM produto p
Define a tabela produto como principal.
p é o alias da tabela produto.
INNER JOIN categoria c
Relaciona a tabela produto com a tabela categoria.
c é o alias da tabela categoria.
ON p.idcategoria = c.idcategoria
Faz a ligação entre o produto e sua categoria.
WHERE
Aplica condições de filtro.
c.descricao <> 'Cama, mesa e banho'
<> significa "diferente de".
Exclui os produtos dessa categoria.
AND
Operador lógico que exige que ambas as condições sejam verdadeiras.
c.descricao <> 'Limpeza'
Exclui também os produtos da categoria Limpeza.

A consulta utiliza INNER JOIN para relacionar as tabelas produto e categoria. 
Em seguida, utiliza o operador de comparação <> para excluir as categorias "Cama, mesa e banho" e "Limpeza", 
e o operador lógico AND para garantir que ambas as condições sejam atendidas simultaneamente. 
O resultado exibe apenas os produtos que não pertencem a nenhuma dessas categorias.