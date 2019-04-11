use sakila;
-- Los tipos date tienen el formato: 'yyyy-mm-dd'
/**
CREATE TABLE paciente (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL DEFAULT '',
    fecha_nacimiento DATE NOT NULL,
    ultima_visita DATE NOT NULL,
    proxima_visita DATE NULL,
    PRIMARY KEY(id)
);
**/

-- describe paciente
/**
-- We insert some 'pacientes'
INSERT INTO paciente VALUES
(1001, 'Maria', '1991-12-31', '2018-01-20', NULL),
(NULL, 'Carlos', '2011-04-29', '2018-01-20', NULL),
(NULL, 'Andres', '2011-01-30', curdate(), NULL);


SELECT * FROM paciente
W(HERE ultima_visita BETWEEN '2018-09-15' AND curdate()
ORDER BY ultima_visita;

SELECT * FROM paciente
WHERE year(fecha_nacimiento) = 2011;

SELECT * FROM paciente
WHERE month(fecha_nacimiento) = 03;
**/

/**
-- With this I can now if any 'paciente' has their birthday today.
SELECT nombre FROM paciente 
WHERE day(fecha_nacimiento) = day(curdate())
    AND month(fecha_nacimiento) = month(curdate());

INSERT INTO paciente VALUES
(NULL, 'JUAN', curdate(), curdate(), NULL);
*/
/**
SELECT id, nombre FROM paciente
WHERE day(ultima_visita) = day(curdate())
    AND month(ultima_visita) = month(curdate());
**/
/**
SELECT p.*,
    timestampdiff(year, fecha_nacimiento, curdate()) AS edad_anios,
    timestampdiff(day, fecha_nacimiento, curdate()) AS edad_dias
FROM paciente AS p;
*/

/**
SELECT p.*,
  timestampdiff(day, ultima_visita, curdate()) AS ulti
  FROM paciente AS p
 WHERE timestampdiff(day, ultima_visita, curdate()) > 60;
*/

SELECT p.*,
    timestampdiff(year, fecha_nacimiento, curdate()) AS edad,
    date_sub(CURDATE(), INTERVAL 18 YEAR) AS fecha_margen
FROM paciente as p
WHERE fecha_nacimiento < date_sub(CURDATE(), INTERVAL 18 YEAR);