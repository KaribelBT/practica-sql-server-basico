if exists (select * from sysobjects where name = 'academic' and xtype = 'U')
DROP TABLE academic


CREATE TABLE academic (
  Anoemplead char(8)   NOT NULL,
  Anombre varchar(42)   NOT NULL,
  Adomicilio varchar(40)   NOT NULL,
  Afecalta date NOT NULL,
  Anumayuda integer NOT NULL,
  Asueldo decimal(5,2) NOT NULL,
  Anocarrera char(4) NOT NULL,
  PRIMARY KEY (Anoemplead)
) 

--
-- Volcado de datos para la tabla 'academic'
--

INSERT INTO academic (Anoemplead, Anombre, Adomicilio, Afecalta, Anumayuda, Asueldo, Anocarrera) VALUES
('72654545', 'Juan Mendez', 'Aragon', '1985-02-01', 2, '999.99', '32'),
('75165232', 'Alberto Alvarez', 'Ecatepec', '1991-02-01', 8, '999.99', '40'),
('75212122', 'Carlos Cuenca', 'Aragon', '1982-01-01', 5, '999.99', '38'),
('75521245', 'Armando Cruz', 'Cd. Neza', '1983-11-01', 2, '999.99', '38'),
('75656566', 'Pedro Benitez', 'Cd. Neza', '1983-02-02', 2, '999.99', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'carrera'
--
if exists (select * from sysobjects where name = 'carrera' and xtype = 'U')
DROP TABLE carrera

CREATE TABLE carrera (
  Cnocarrera char(4)  NOT NULL,
  Cnombre varchar(15)  NOT NULL,
  Cedificio varchar(6)  NOT NULL,
  Ccoord char(8)  NOT NULL,
  PRIMARY KEY (Cnocarrera)
) ;

--
-- Volcado de datos para la tabla 'carrera'
--

INSERT INTO carrera (Cnocarrera, Cnombre, Cedificio, Ccoord) VALUES
('32', 'computacion', 'A202', '75656566'),
('38', 'Electronica', 'A501', '75521245'),
('40', 'Mecanica', 'A501', '75165232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'estudian'
--
if exists (select * from sysobjects where name = 'estudian' and xtype = 'U')
DROP TABLE estudian


CREATE TABLE estudian (
  Enocuenta char(8)  NOT NULL,
  Enombre varchar(40)  NOT NULL,
  Edomicilio varchar(40)  NOT NULL,
  Etelefono char(10)  DEFAULT NULL,
  Efecnacim date NOT NULL,
  Enocarrera char(4)  NOT NULL,
  PRIMARY KEY (Enocuenta),
) ;

--
-- Volcado de datos para la tabla 'estudian'
--

INSERT INTO estudian (Enocuenta, Enombre, Edomicilio, Etelefono, Efecnacim, Enocarrera) VALUES
('82323233', 'Pedro Sauza', 'Ecatepec', NULL, '1967-12-11', '40'),
('84254321', 'Carolina Biset', 'ARAGON', '7715421', '1968-02-01', '32'),
('84254322', 'Alejandro Sauza', 'Cd. Neza', '8545454', '1969-05-05', '38'),
('84321212', 'Juan Bisset', 'Aragon', '7212212', '1953-02-05', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'grupo'
--
if exists (select * from sysobjects where name = 'grupo' and xtype = 'U')
DROP TABLE grupo

CREATE TABLE grupo (
  Gnogrupo char(4)  NOT NULL,
  Gnomateria char(4)  NOT NULL,
  Gnomaestro char(8)  DEFAULT NULL,
  Gdias varchar(6)  NOT NULL,
  Ghora varchar(15)  NOT NULL,
  Gsalon varchar(6)  NOT NULL,
  PRIMARY KEY (Gnogrupo),
) ;

--
-- Volcado de datos para la tabla 'grupo'
--

INSERT INTO grupo (Gnogrupo, Gnomateria, Gnomaestro, Gdias, Ghora, Gsalon) VALUES
('1157', '0076', '72654545', 'LUMIVI', '11:30 13:30', 'A211'),
('1158', '0134', NULL, 'MAJU', '07:00 8:30', 'A521'),
('1159', '0119', '75656566', 'SA', '07:00 12:00', 'A121'),
('2501', '0138', '75165232', 'LUMIVI', '17:00 18:30', 'A213'),
('2504', '0024', '75165232', 'MAJU', '17:00 19:00', 'A212'),
('2705', '0028', '75212122', 'MAJU', '17:00 19:00', 'A525'),
('2706', '0130', '75521245', 'LUMIVI', '17:00 18:30', 'A808');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'inscrip'
--
if exists (select * from sysobjects where name = 'inscrip' and xtype = 'U')
DROP TABLE inscrip


CREATE TABLE inscrip (
  Inogrupo char(4)  DEFAULT NULL,
  Inocuenta char(10)  NOT NULL,
  Ifecalta date NOT NULL,
  Ihoraalta char(6)  NOT NULL,
  Inocarrera char(4)  NOT NULL,
) ;

--
-- Volcado de datos para la tabla inscrip
--

INSERT INTO inscrip (Inogrupo, Inocuenta, Ifecalta, Ihoraalta, Inocarrera) VALUES
('1158', '84254321', '1994-02-01', '1130', '32'),
('1158', '84254321', '1994-02-01', '1130', '32'),
('1157', '84321212', '1994-02-02', '1150', '32'),
('1158', '84321212', '1994-02-02', '1150', '32'),
('1157', '84254322', '1994-02-15', '1550', '38'),
('1158', '84254322', '1994-02-15', '1550', '38'),
('1157', '82323233', '1994-02-16', '1420', '40'),
('1158', '82323233', '1994-02-16', '1420', '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'materia'
--

if exists (select * from sysobjects where name = 'materia' and xtype = 'U')
DROP TABLE materia

CREATE TABLE materia (
  Mnomateria char(4)  NOT NULL,
  Mnombre varchar(42)  NOT NULL,
  Mcred smallint DEFAULT NULL,
  Mcostolab decimal(5,2) DEFAULT NULL,
  Mnocarrera char(4)  NOT NULL,
  PRIMARY KEY (Mnomateria)
) ;

--
-- Volcado de datos para la tabla materia
--

INSERT INTO materia (Mnomateria, Mnombre, Mcred, Mcostolab, Mnocarrera) VALUES
('0024', 'Circuitos Electricos', 10, '150.00', '40'),
('0028', 'Analisis Dinamico de Maquinas', 8, '100.00', '38'),
('0056', 'Estructuras Discretas', 7, '0.00', '32'),
('0076', 'Bases de Datos', 8, '100.00', '32'),
('0119', 'Estructuras de Datos', 8, '0.00', '32'),
('0130', 'Elementos de Maquinas', 8, '50.00', '38'),
('0134', 'Sistemas Digitales', 8, '50.00', '32'),
('0138', 'Dispositivos Electronicos', 10, '90.00', '40'),
('0559', 'Memorias y Perifericos', 10, '100.00', '32'),
('0561', 'Microcomputadoras', 10, '500.00', '32');

if exists (select * from sysobjects where name = 'cmateria' and xtype = 'U')
DROP TABLE cmateria

CREATE TABLE cmateria (
  Mnomateria char(4)  NOT NULL,
  Mnombre varchar(42)  NOT NULL,
  Mcred smallint DEFAULT NULL,
  Mcostolab decimal(5,2) DEFAULT NULL,
  Mnocarrera char(4)  NOT NULL,
  PRIMARY KEY (Mnomateria)
) ;--

SELECT *
FROM carrera

SELECT Cnocarrera, Cnombre
FROM carrera

SELECT mnombre, mcostolab, mcostolab * .10 AS Ayuda
FROM materia

SELECT 'La materia', mnombre, 'tiene', mcred, 'créditos'
FROM materia

SELECT DISTINCT mnocarrera
FROM materia

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcostolab = 100

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcostolab < 100

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcostolab >= 100

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcostolab BETWEEN 100 AND 200

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcostolab NOT BETWEEN 100 AND 200

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mnombre BETWEEN 'b' AND 'd'

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcred IN (10,8)

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
WHERE mcred NOT IN (10,8)

SELECT gnogrupo, gnomateria, gnomaestro, gdias, gsalon
FROM  grupo
WHERE gnomaestro IS NULL

SELECT *
FROM  grupo
WHERE gnomaestro IS NOT NULL

SELECT mnomateria, mnombre, mcred, mnocarrera
FROM Materia
WHERE mnocarrera = '32'
	  OR mnocarrera = '38'

SELECT mnomateria, mnombre, mcred, mnocarrera
FROM Materia
WHERE mnocarrera = '32'
	  AND mcostolab > 100
	  
SELECT mnomateria, mnombre, mnocarrera
FROM Materia
WHERE NOT mnocarrera = '32'

SELECT *
FROM materia
WHERE (mnocarrera = '32' AND mcred = 8)

SELECT mnomateria, mnombre, mcred, mnocarrera, mcostolab
FROM materia
ORDER BY mcostolab DESC, mnombre DESC

SELECT mnomateria, mnombre, mcostolab * 1.10
FROM materia
ORDER BY 3

SELECT c.cnocarrera, c.cnombre
FROM carrera c
WHERE c.cnocarrera = 32

SELECT mnomateria, mnombre, mnocarrera, cnombre
FROM materia INNER JOIN carrera
ON cnocarrera = mnocarrera

SELECT gnomateria, gnomaestro, anombre
FROM academic INNER JOIN grupo
ON anoemplead = gnomaestro

SELECT gnogrupo, mnombre, mcred
FROM materia as m LEFT OUTER JOIN grupo as g
ON m.mnomateria = g.gnomateria

SELECT gnogrupo, mnombre, mcred
FROM grupo as g RIGHT OUTER JOIN  materia as m 
ON m.mnomateria = g.gnomateria

SELECT gnogrupo, mnombre, mcred, mnocarrera
FROM grupo as g RIGHT OUTER JOIN  materia as m 
ON m.mnomateria = g.gnomateria
WHERE mnocarrera = 32

SELECT gnogrupo, mnombre, mcred, mnocarrera, cnombre
FROM grupo as g RIGHT OUTER JOIN  materia as m 
ON m.mnomateria = g.gnomateria
INNER JOIN carrera ON mnocarrera = cnocarrera
WHERE mnocarrera = 32

SELECT anoemplead AS numero, anombre AS nombre, 'A' AS tipo
FROM academic
UNION
SELECT enocuenta, enombre, 'E'
FROM estudian
ORDER BY anombre

SELECT SUM(mcostolab)
FROM materia

SELECT AVG(mcostolab)
FROM materia

SELECT MAX(mcostolab),MIN(mcostolab)
FROM materia

SELECT COUNT(*)
FROM materia
WHERE mnocarrera = 32

SELECT COUNT(DISTINCT mnocarrera)
FROM materia

SELECT mnocarrera, AVG(mcostolab)
FROM materia
GROUP BY mnocarrera

SELECT mnocarrera, SUM(mcostolab)
FROM materia
WHERE mcred = 8
GROUP BY mnocarrera
ORDER BY mnocarrera DESC

SELECT m.mcred, m.mnocarrera, MAX(m.mcostolab)
FROM materia m
GROUP BY m.mcred, m.mnocarrera

SELECT mnocarrera, AVG(mcostolab)
FROM materia
GROUP BY mnocarrera
HAVING AVG(mcostolab) > 100

SELECT mnocarrera, AVG(mcostolab)
FROM materia
WHERE mcostolab > 0
GROUP BY mnocarrera
HAVING AVG(mcostolab) > 100

SELECT mnocarrera, mnombre
FROM materia
WHERE mcostolab = (
	SELECT MAX(mcostolab)
	FROM materia
)

SELECT mnomateria, mnombre, mcostolab
FROM materia
WHERE mcostolab > (
	SELECT MIN (academic.asueldo * .05)
	FROM academic
)

SELECT anombre, asueldo
FROM academic
WHERE anocarrera IN (
	SELECT cnocarrera
	FROM carrera
	WHERE cedificio = 'A501'
)

SELECT gnogrupo, gnomaestro
FROM grupo
WHERE EXISTS (
	SELECT * 
	FROM academic
	WHERE anoemplead = gnomaestro
)

SELECT a.anoemplead, a.anombre
FROM academic a
WHERE a.anoemplead IN (
	SELECT c.ccoord
	FROM carrera c
	WHERE c.cnocarrera IN (
		SELECT m.mnocarrera
		FROM materia m
		WHERE m.mcred = 8
		)
)

SELECT mnocarrera, AVG(mcostolab)
FROM materia
GROUP BY mnocarrera
HAVING AVG(mcostolab) < (
	SELECT AVG(mcostolab)
	FROM materia
)

INSERT INTO materia
VALUES ('0177', 'Programación con SQL', 6, 100.00, 32)

INSERT INTO materia (mnomateria, mnombre, mcred, mcostolab, mnocarrera)
VALUES ('0177', 'Programación con SQL', 6, 100.00, 32)

INSERT INTO materia
VALUES ('0178', 'SQL Dinámico', NULL,NULL, 32)

INSERT INTO materia (mnomateria, mnombre, mnocarrera)
VALUES ('0178', 'SQL Dinámico', 32)

INSERT INTO cmateria
SELECT *
FROM materia
WHERE mnocarrera = 32

DELETE FROM materia
WHERE mnomateria like '00%'

UPDATE materia
SET mcostolab = 150.00
WHERE mnomateria = '0177'

UPDATE materia
SET mcred = mcred + 10