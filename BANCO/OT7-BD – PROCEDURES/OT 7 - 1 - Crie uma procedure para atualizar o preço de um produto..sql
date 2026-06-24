SELECT * FROM produto;/*Exibe os dados da tabela para verificar se a atualização foi realizada com sucesso.----- passo 3 */

/*--------------------------------------------------------------------------------------------------------------------------------*/

CALL AtualizarPrecoProduto(1, 4.80);/*Executa a procedure, alterando o preço do produto de ID 1 para R$ 4,80. ----passo 2 */

/*-------------------------------------------------------------------------------------------------------------------------------*/
use mercado;      /*SELECIONA p banco que será usado ------ passo 1 */ 

DROP PROCEDURE IF EXISTS AtualizarPrecoProduto;   /*Exclui a procedure caso ela já exista, evitando erros na criação.*/

DELIMITER $$     /*Altera temporariamente o delimitador para permitir a criação da procedure.*/

CREATE PROCEDURE AtualizarPrecoProduto(         /*Cria uma procedure chamada AtualizarPrecoProduto.*/
    IN pidproduto INT							/*Cria um parâmetro de entrada chamado pidproduto, do tipo inteiro. Ele receberá o ID do produto que será alterado.*/
    IN pnovopreco DECIMAL(10,2)					/*Cria um parâmetro de entrada chamado pnovopreco, do tipo decimal. Ele receberá o novo preço do produto.
)
BEGIN									/*Indica o início dos comandos que serão executados pela procedure.*/
    UPDATE produto						/*Inicia a atualização de dados na tabela produto.*/
    SET preco = pnovopreco				/*Define que a coluna preco receberá o valor informado no parâmetro pnovopreco.*/
    WHERE idproduto = pidproduto;		/*Determina qual produto será atualizado, comparando o ID da tabela com o ID recebido pela procedure.*/
END $$									/*Finaliza a procedure.*/

DELIMITER ;  /*Após finalizar a criação da procedure, voltamos ao padrão:*/

