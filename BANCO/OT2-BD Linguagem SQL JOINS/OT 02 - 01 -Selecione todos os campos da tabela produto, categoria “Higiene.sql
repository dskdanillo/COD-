/* OT 02 - 01  
POR MEIO DO jOIN SELECIONAR PRODUTOS ESPECIFICOS DENTRO DA CATEGORIA*/

SELECT produto.*
FROM produto
INNER JOIN categoria
ON produto.idcategoria = categoria.idcategoria
WHERE categoria.descricao = 'Higiene pessoal';

/*SELECT produto.* -                             Seleciona todas as colunas da tabela produto.
FROM produto -                                   Define a tabela principal da consulta.
INNER JOIN categoria -                           Junta a tabela categoria à tabela produto.
ON produto.idcategoria = categoria.idcategoria - Relaciona cada produto à sua categoria através do campo idcategoria.
WHERE categoria.descricao = 'Higiene pessoal' -  Filtra apenas os produtos cuja categoria é "Higiene pessoal".*/