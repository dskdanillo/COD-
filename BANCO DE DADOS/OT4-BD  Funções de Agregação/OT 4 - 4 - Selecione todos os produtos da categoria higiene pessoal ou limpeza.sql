/*OT 4 - 4 - Selecione todos os produtos da categoria “higiene pessoal” ou “limpeza”;*/

SELECT produto.*                            /*Seleciona todas as colunas da tabela produto.*/    
FROM produto								/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN categoria						/*Junta a tabela categoria à tabela produto.*/
    ON produto.idcategoria = categoria.idcategoria  /*Relaciona cada produto à sua categoria através do campo idcategoria.*/
WHERE categoria.descricao = 'Higiene pessoal'     /*Filtra os produtos da categoria Higiene pessoal.*/
   OR categoria.descricao = 'Limpeza';			  /*Inclui também os produtos da categoria Limpeza.*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

SELECT p.*
SELECT: inicia a consulta.
produto.*: exibe todos os campos da tabela produto.
FROM produto p
Define a tabela produto como tabela principal.
p é um alias da tabela.
INNER JOIN categoria c
Relaciona a tabela produto com a tabela categoria.
ON p.idcategoria = c.idcategoria
Faz a ligação entre o produto e sua categoria.
WHERE
Aplica um filtro aos registros.
c.descricao = 'Higiene pessoal'
Seleciona os produtos da categoria Higiene pessoal.
OR
Operador lógico que retorna registros quando pelo menos uma das condições é verdadeira.
c.descricao = 'Limpeza'
Seleciona os produtos da categoria Limpeza.