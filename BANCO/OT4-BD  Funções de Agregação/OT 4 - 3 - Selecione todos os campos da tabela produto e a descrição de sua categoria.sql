/*OT 4 - 3 - Selecione todos os campos da tabela produto e a descrição de sua categoria, cujo os
produtos sejam da categoria “Higiene pessoal” e cuja descrição do produto termine com a
palavra “dental”*/
 
SELECT p.*, c.descricao AS categoria   /*Seleciona todas as colunas da tabela produto (p.*) e também a descrição da categoria.*/
FROM produto p								/*Define a tabela produto como tabela principal da consulta.*/
INNER JOIN categoria c						/*Junta a tabela categoria à tabela produto.*/
    ON p.idcategoria = c.idcategoria		/*Relaciona cada produto à sua respectiva categoria através do campo idcategoria.*/
WHERE c.descricao = 'Higiene pessoal'		/*Filtra apenas os produtos da categoria Higiene pessoal.*/
AND p.descricao LIKE '%dental';				/*Filtra os produtos cuja descrição termina com a palavra "dental".*/

/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

SELECT p.*, c.descricao AS categoria
p.*: exibe todos os campos da tabela produto.
c.descricao: exibe a descrição da categoria.
AS categoria: cria um alias para a coluna.
FROM produto p
Define a tabela produto como principal.
p é um apelido (alias) da tabela.
INNER JOIN categoria c
Une a tabela produto com a tabela categoria.
ON p.idcategoria = c.idcategoria
Relaciona cada produto à sua categoria.
WHERE c.descricao = 'Higiene pessoal'
Filtra apenas os produtos da categoria Higiene pessoal.
AND
Operador lógico que exige que as duas condições sejam verdadeiras.
p.descricao LIKE '%dental'
LIKE realiza uma busca por padrão.
% antes da palavra significa qualquer texto antes.
Como não há % depois de dental, a descrição deve terminar com essa palavra.