use mercado;
CALL DiminuirPreco10PorCento(); /*- Executa a procedure criada, aplicando a redução de 10% no preço de todos os produtos da tabela.*/

/* cria o PROCEDURE PARA DIMINUIR
use mercado;

DELIMITER $$
CREATE PROCEDURE DiminuirPreco10PorCento()   - Cria uma procedure chamada DiminuirPreco10PorCento.
BEGIN										 - Inicia o bloco de comandos da procedure. 
    UPDATE mercado.produto					 - Indica que a tabela produto será atualizada.
    SET preco = preco * 0.90;				 - Altera o valor da coluna preco, diminuindo 10% do valor atual.
END $$										 

DELIMITER ;



/*-----------------------------------------------------------*/
/*executa o PROCEDURE DE AUMENTO de 10%  */

CALL AumentarPreco10PorCento();

/*
use mercado;  cria o PROCEDURE DE AUMENTO DE 10%
DELIMITER $$

CREATE PROCEDURE AumentarPreco10PorCento()
BEGIN
    UPDATE mercado.produto
    SET preco = preco * 1.10;
END $$

DELIMITER ;*/







/*use mercado;
DROP PROCEDURE IF EXISTS AumentarPreco10PorCento; */


