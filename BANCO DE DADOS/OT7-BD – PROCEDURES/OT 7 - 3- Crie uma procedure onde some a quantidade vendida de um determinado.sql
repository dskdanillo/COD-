use mercado;

CALL AumentarPrecoProduto(1);


DELIMITER $$

CREATE PROCEDURE AumentarPrecoProduto(
    IN p_idproduto INT
)
BEGIN
    DECLARE total INT;                /*Cria uma variável chamada total_vendido*/

    SELECT SUM(quantidade)            /*Aqui estamos pedindo ao banco que calcule a soma dos valores da coluna quantidade*/
    INTO total					      /*Dentro de uma Procedure, o resultado da consulta pode ser armazenado em uma variável.*/
    FROM vendas_has_produto			  /*Indica de qual tabela os dados serão lidos.*/
    WHERE idproduto = p_idproduto;	  /*É uma condição (filtro).*/

    UPDATE produto					/*O comando UPDATE serve para alterar dados existentes em uma tabela.*/
    SET preco = preco + (preco * total / 100)	/*Define qual coluna será alterada e qual será o novo valor.*/
    WHERE idproduto = p_idproduto;				/*Filtra qual registro será atualizado.*/
END$$		/*Fecha o bloco da procedure.*/

DELIMITER ;

*/