/*PARA VISUALIZAR A TABELA

>>>>>>SELECT * FROM produto;

PARA CRIAR A TABELA PRODUTO*/

CREATE TABLE produto (
    idproduto int NOT NULL PRIMARY KEY AUTO_INCREMENT,descricao varchar(45),preco decimal(5,2) NULL,idcategoria int,
/*Cria a coluna idproduto:

INT → aceita números inteiros.
NOT NULL → não pode ficar vazia.
PRIMARY KEY → identifica cada produto de forma única.
AUTO_INCREMENT → gera automaticamente os códigos dos produtos.*/


    CONSTRAINT fkcategoria FOREIGN KEY (idcategoria)  /*Cria uma restrição chamada fkcategoria.
														Essa restrição define uma chave estrangeira (FOREIGN KEY) para a coluna idcategoria.*/
    
    REFERENCES categoria (idcategoria)				/*Indica que o valor informado em idcategoria deve existir na tabela categoria.*/
);