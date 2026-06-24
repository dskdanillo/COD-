/*OT 6 - 3 - Registrar vendedores desligados*/


DELIMITER $$

CREATE TRIGGER trg_vendedor_desligado
BEFORE DELETE ON vendedor
FOR EACH ROW       									/*A trigger será executada para cada vendedor que for excluído.*/
BEGIN												/*Incia o bloco de dados*/
    INSERT INTO vendedores_desligados				/*Insere informações na tabela vendedores_desligados.*/
    (idvendedor, nome, salario, data_desligamento)
    VALUES											/*Indica os valores que serão inseridos.*/
    (OLD.idvendedor, OLD.nome, OLD.salario, NOW());
END $$

DELIMITER ;


/*Resumo
BEFORE DELETE → executa antes da exclusão.
OLD contém os dados do vendedor que será removido.
Os dados são copiados para a tabela vendedores_desligados.
NOW() registra a data e hora do desligamento.*/