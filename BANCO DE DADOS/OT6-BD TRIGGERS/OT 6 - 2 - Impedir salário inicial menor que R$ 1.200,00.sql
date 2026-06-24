/*OT 6 - 2 - Impedir salário inicial menor que R$ 1.200,00*/

DELIMITER $$

CREATE TRIGGER trg_salario_minimo
BEFORE INSERT ON vendedor
FOR EACH ROW
BEGIN
    IF NEW.salario < 1200.00 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salário inicial deve ser no mínimo R$ 1200,00.';
    END IF;
END $$

DELIMITER ;

/*Resumo
BEFORE INSERT → executa antes do cadastro.
Verifica o valor informado para salário.
Se for menor que R$ 1.200,00, o cadastro é bloqueado.*/