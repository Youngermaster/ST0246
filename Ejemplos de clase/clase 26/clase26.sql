USE register;
SET @today = curdate();

SELECT *
FROM paciente
WHERE ultima_visita < @today;

USE sakila;
DROP PROCEDURE IF EXISTS prueba;
DELIMITER $ -- Or you can use ;; or whatever you want
CREATE PROCEDURE PRUEBA()
BEGIN
	SELECT "HELLO WORLD" AS MSG;
    SELECT "SECOND HELLO WORLD" AS MSG_2;
END$
DELIMITER ;

CALL PRUEBA();

USE sakila;