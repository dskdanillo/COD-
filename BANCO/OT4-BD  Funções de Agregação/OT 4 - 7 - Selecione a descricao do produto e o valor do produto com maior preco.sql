/*OT 4 - 7 - Selecione a descrição do produto e o valor do produto com maior preço
cadastrado;*/

SELECT descricao, preco         /*Seleciona as colunas descricao e preco da tabela produto.*/
FROM produto					/*Define a tabela produto como fonte dos dados da consulta.*/
WHERE preco = (					/*Filtra apenas os produtos cujo preço seja igual ao valor retornado pela subconsulta.*/
    SELECT MAX(preco)			/*Utiliza a função MAX() para encontrar o maior preço cadastrado na tabela.*/
    FROM produto				/*Busca o maior preço entre todos os registros da tabela produto.*/
);


/*<><><><><><><><><><><><>< explicação: ><><><><><><><><><><><><><><><

SELECT descricao, preco
SELECT: inicia a consulta.
descricao: exibe a descrição do produto.
preco: exibe o preço do produto.
FROM produto
Indica que os dados serão obtidos da tabela produto.
WHERE preco =
Filtra o produto que possui o maior preço.
SELECT MAX(preco)
MAX() é uma função de agregação.
Retorna o maior valor encontrado na coluna preco.
FROM produto
Procura o maior preço dentro da tabela produto.