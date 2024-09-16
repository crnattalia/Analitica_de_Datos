CREATE DATABASE EDUCACION_PERSONAS;

USE EDUCACION_PERSONAS;

CREATE TABLE PERSONAS (
	ID_PERSONA INT AUTO_INCREMENT PRIMARY KEY,
    EDAD INT NOT NULL,
    NIVEL_EDUCATIVO VARCHAR(255) NOT NULL,
    INGRESO_MENSUAL VARCHAR(255) NOT NULL,
    SEXO VARCHAR(255) NOT NULL,
    ANIOS_ESCOLARES INT NOT NULL
);

INSERT INTO PERSONAS (EDAD, NIVEL_EDUCATIVO, INGRESO_MENSUAL, SEXO, ANIOS_ESCOLARES)
VALUES 
('56','Secundaria completa','5375','Mujer','12'),
('52','Medio superior y superior','12900','Hombre','17'),
('25','Medio superior y superior','12000','Hombre','15'),
('50','Secundaria completa','3870','Mujer','9'),
('41','Medio superior y superior','1000','Mujer','17'),
('36','Secundaria completa','4085','Mujer','9'),
('23','Medio superior y superior','3440','Mujer','16'),
('59','Primaria incompleta','4300','Hombre','4'),
('37','Secundaria completa','4000','Hombre','9'),
('18','Primaria completa','4300','Hombre','8'),
('44','Medio superior y superior','9000','Hombre','17'),
('35','Medio superior y superior','24000','Mujer','12'),
('15','Primaria incompleta','3870','Hombre','1'),
('36','Secundaria completa','7740','Hombre','9'),
('30','Medio superior y superior','4500','Hombre','12'),
('35','Secundaria completa','8260','Hombre','9'),
('46','Medio superior y superior','5160','Hombre','12'),
('69','Primaria completa','1075','Mujer','6'),
('35','Medio superior y superior','12000','Hombre','12'),
('26','Primaria completa','3225','Hombre','7'),
('42','Secundaria completa','4300','Hombre','9'),
('21','Primaria completa','1290','Mujer','6'),
('43','Medio superior y superior','17200','Mujer','12'),
('33','Medio superior y superior','10750','Hombre','12'),
('40','Primaria completa','5590','Mujer','6'),
('34','Secundaria completa','17200','Hombre','11'),
('42','Medio superior y superior','1720','Mujer','16'),
('40','Secundaria completa','4085','Mujer','9'),
('48','Medio superior y superior','15000','Hombre','17'),
('52','Medio superior y superior','8000','Hombre','12'),
('26','Medio superior y superior','8600','Hombre','17'),
('29','Secundaria completa','12900','Hombre','9'),
('45','Medio superior y superior','11600','Hombre','17'),
('41','Primaria completa','6020','Mujer','6'),
('47','Primaria completa','2580','Mujer','6'),
('51','Primaria completa','1075','Mujer','6'),
('51','Primaria completa','12900','Hombre','6'),
('25','Primaria completa','6020','Hombre','6'),
('21','Medio superior y superior','9460','Mujer','14'),
('44','Medio superior y superior','8000','Hombre','12'),
('24','Secundaria completa','3225','Mujer','9'),
('21','Medio superior y superior','5160','Hombre','14'),
('22','Secundaria completa','6880','Mujer','9'),
('55','Primaria completa','5200','Hombre','6'),
('31','Secundaria completa','4730','Mujer','10'),
('26','Medio superior y superior','1075','Mujer','12'),
('32','Secundaria completa','6450','Mujer','9'),
('55','Secundaria completa','4730','Hombre','9'),
('24','Medio superior y superior','4300','Hombre','12'),
('17','Primaria completa','3010','Hombre','8');

SELECT * FROM PERSONAS;

SELECT NIVEL_EDUCATIVO, COUNT(*) AS CANTIDAD
FROM PERSONAS
GROUP BY NIVEL_EDUCATIVO
ORDER BY CANTIDAD DESC;

SELECT 
	NIVEL_EDUCATIVO, 
    SEXO,
    COUNT(*) AS CANTIDAD
FROM PERSONAS
GROUP BY NIVEL_EDUCATIVO, SEXO
ORDER BY NIVEL_EDUCATIVO ASC;

SELECT 
	NIVEL_EDUCATIVO, 
    AVG(INGRESO_MENSUAL) AS PROMEDIO_INGRESO_MENSUAL
FROM PERSONAS
GROUP BY NIVEL_EDUCATIVO;

SELECT 
	SEXO,
    EDAD,
    COUNT(*) AS CANTIDAD
FROM PERSONAS
GROUP BY SEXO, EDAD
ORDER BY SEXO, EDAD;

SELECT 
	ANIOS_ESCOLARES,
    AVG(INGRESO_MENSUAL) AS PROMEDIO_INGRESO_MENSUAL
FROM PERSONAS
GROUP BY ANIOS_ESCOLARES;

SELECT
	CASE
		WHEN EDAD BETWEEN 0 AND 18 THEN '0-18'
        WHEN EDAD BETWEEN 19 AND 35 THEN '19-35'
        WHEN EDAD BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
	END AS RANGO_EDAD,
    COUNT(*) AS CANTIDAD
FROM PERSONAS
GROUP BY RANGO_EDAD;

SELECT 
	SEXO,
    NIVEL_EDUCATIVO,
    AVG(INGRESO_MENSUAL) AS PROMEDIO_INGRESO_MENSUAL
FROM PERSONAS
GROUP BY SEXO, NIVEL_EDUCATIVO;

SELECT 
	NIVEL_EDUCATIVO,
    SEXO,
    AVG(INGRESO_MENSUAL) AS PROMEDIO_INGRESO_MENSUAL
FROM PERSONAS
GROUP BY NIVEL_EDUCATIVO, SEXO
ORDER BY PROMEDIO_INGRESO_MENSUAL DESC;