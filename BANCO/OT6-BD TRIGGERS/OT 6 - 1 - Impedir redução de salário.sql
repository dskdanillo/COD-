/*OT 6 - 1 - Impedir redução de salário*/


DELIMITER $$

CREATE TRIGGER trg_nao_reduzir_salario
BEFORE UPDATE ON vendedor				/*A trigger será executada antes de uma atualização (UPDATE) na tabela vendedor.*/
FOR EACH ROW							/*A trigger será executada para cada registro que estiver sendo atualizado.*/
BEGIN									/*Inicia o bloco de comandos da trigger.*/
    IF NEW.salario < OLD.salario THEN		/*Compara o novo salário com o salário atual:*/
        SIGNAL SQLSTATE '45000'				/*Gera um erro personalizado e interrompe a atualização.*/
        SET MESSAGE_TEXT = 'O salário não pode ser menor que o já cadastrado.'; /*Define a mensagem de erro que será exibida ao usuário.*/
    END IF;																		/*Finaliza a condição IF.*/
END $$																			/*Finaliza o bloco da trigger.*/

DELIMITER ;


/*Resumo
BEFORE UPDATE → executa antes da alteração.
NEW.salario → novo salário.
OLD.salario → salário atual.
Se o novo salário for menor que o antigo, a alteração é cancelada.