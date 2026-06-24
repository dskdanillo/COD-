/*OT 6 - Tabela de vendedores desligados*/

CREATE TABLE vendedores_desligados (   /*Cria uma nova tabela chamada vendedores_desligados.*/
    idvendedor INT,					   /*Cria a coluna idvendedor, que armazenará o código do vendedor.*/
    nome VARCHAR(100),					/*Cria a coluna nome, que armazenará o nome do vendedor com até 100 caracteres.*/
    salario DECIMAL(10,2),				/*Cria a coluna salario, que armazenará o salário do vendedor com até 10 dígitos, sendo 2 casas decimais.*/
    data_desligamento DATETIME			/*Cria a coluna data_desligamento, que armazenará a data e a hora em que o vendedor foi removido da tabela de vendedores ativos.*/
);