/* OT 3 - DECLARAÇÃO de CHAVE PRIMARIA e CHAVE ESTRANGEIRA E Criação da tabela : vendas_has_produto*/

USE MERCADO;						/*Seleciona o banco de dados MERCADO para que os comandos sejam executados nele.*/
CREATE table vendas_has_produto(			/*Cria uma nova tabela chamada vendas_has_produto.*/

idvenda int,								/*Cria a coluna idvenda, que armazenará o código da venda.*/
idproduto int,								/*Cria a coluna idproduto, que armazenará o código do produto.*/
quantidade int,								/*Cria a coluna quantidade, que armazenará a quantidade vendida de cada produto.*/
constraint fkvenda foreign key (idvenda)			/*Cria uma chave estrangeira chamada fkvenda, relacionando a coluna idvenda desta tabela com a coluna idvenda da tabela vendas.*/
references vendas (idvenda),
constraint fkproduto foreign key (idproduto) /*Cria uma chave estrangeira chamada fkproduto, relacionando a coluna idproduto desta tabela com a coluna idproduto da tabela produto.*/
references produto(idproduto),
primary key (idvenda, idproduto));				/*Define uma chave primária composta pelas colunas idvenda e idproduto.*/