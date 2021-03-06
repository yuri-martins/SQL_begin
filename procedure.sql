delimiter $

--CRIANDO UMA PROCEDURE

CREATE PROCEDURE CONTA()
BEGIN
    SELECT 10 + 10 AS "CONTA";
END
$

--CHAMANDO UMA PROCEDURE

CALL CONTA()$


--APAGANDO UMA PROCEDURE

DROP PROCEDURE CONTA$



--CRIANDO PROCEDURE COM PARAMETROS

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
  SELECT NUMERO1 + NUMERO2 AS "CONTA";
END
$

--CHAMANDO PROCEDURE COM PARAMETROS


DELIMITER ;
CALL CONTA(100,78);
CALL CONTA(47456,346435);

--PROCEDURE COM TABELAS

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL,'BANCO DE DADOS FUNDAMENTAL',25,200.00);

SELECT * FROM CURSOS;

/* DELIMITADOR */

DELIMITER #

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),P_HORAS INT(3),P_PRECO FLOAT(10,2))
BEGIN
		INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);
END
#

DELIMITER ;

STATUS

CALL CAD_CURSO('BI SQL SERVER',35,200.00);

SELECT * FROM CURSOS;

DELIMITER #

CREATE PROCEDURE SEL_CURSO()
BEGIN
		SELECT IDCURSO, NOME, HORAS, VALOR
		FROM CURSOS;
END
#

DELIMITER ;

CALL SEL_CURSO();
