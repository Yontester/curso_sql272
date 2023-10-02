CREATE TABLE USERS(
ID INT PRIMARY KEY,
USERNAME VARCHAR(100),
PASSWORD VARCHAR(200)
);

insert INTO USERS VALUES(1,'WWW95','123456');
insert INTO USERS (USERNAME,ID) VALUES('JIMY67',3);
insert INTO USERS VALUES(2,'JUAN23','123456');

TRUNCATE TABLE USERS;
-- ON DELETE CASACADA: esa una eliminacion en casacada
-- elimina todo los datos que dependan de otra tabla, clave, foranea
-- si elimino una carrera,se eliminaran los institutos que dependian de sa tabla madre

alter table Proyecto add presupuest double;
ALTER TABLE Proyecto ADD presupuesto DOUBLE;
------------ CLASE 2 ------------
--las variables constastes si o si deben ser inicializadas
--aveces el case pide ;
-- 255 VALOR POR DEFECTO DEL VARCHAR
CREATE TABLE USERS(
ID INT NOT NULL PRIMARY KEY,
USERNAME VARCHAR(100) UNIQUE,
PASSWORD VARCHAR(255)
);

INSERT INTO USERS VALUES (1,'www96',12345);
INSERT INTO USERS VALUES (2,'JUAN23',65443);
INSERT INTO USERS VALUES (3,'witt',123432);

ALTER TABLE USERS ADD AGE INT;

--registro de la informacion que teneoms
UPDATE USERS SET AGE = 22 WHERE ID = 1;
UPDATE USERS SET AGE = 23 WHERE ID = 2;
UPDATE USERS SET AGE = 27 WHERE ID = 3;

DECLARE
	USUARIO USERS%ROWTYPE;
	--EDAD INT NOT NULL :=0;--manera 1
	EDAD USERS.AGE%TYPE;--manera 1
BEGIN
	SELECT * INTO USUARIO
	FROM USERS WHERE ID=1;
	DBMS_OUTPUT.PUT_LINE(USUARIO.USERNAME||' - '||USUARIO.AGE);

	SELECT AGE INTO EDAD
	FROM USERS
	WHERE ID = 2;

	DBMS_OUTPUT.PUT_LINE('EDAD: '|| EDAD);
END;
---pasa que la variable usuario se convierte en un objeto
-- pero este solo almacena una fila o dato
--%ROWTYPE es una instruccion exclusiva de oracole, que pasa los datos 
-- a una variable convirtiendola en un objeto
----
DECLARE
	EDAD USERS.AGE%TYPE;
BEGIN
	SELECT AGE INTO EDAD
	FROM USERS 
	WHERE ID=1;
	IF EDAD >= 25
	THEN
		DBMS_OUTPUT.PUT_LINE('SI');
	ELSE
		DBMS_OUTPUT.PUT_LINE('NO');
	END IF;
END;

---
Create or Replace Function nombre_funcion(x1 IN number)--  
return number-- aqui especificas el tipo de variable que devolvera la funcion
IS
--declaracion de variables
-- 
BEGIN
	--sententcias if , consultas sql, funciones lo que nesecites
	-- cada bloque SQL termina con un punto y coma;
return --variable que sale;
END nombre_funcion-- cierra la funcion

Create OR Replace Function MAYOR_N(xid IN INT,xedad IN int)
return VARCHAR
IS
	conf VARCHAR2(10);
	EDAD USERS.AGE%TYPE;
BEGIN
	SELECT AGE INTO EDAD
	FROM USERS 
	WHERE ID=xid;
	IF EDAD >= xedad
	THEN
		conf:='si';
	ELSE
		conf:='NO';
	END IF;
return conf;
END MAYOR_N
--sql
SELECT ID, USERNAME, AGE, MAYOR_N(id,25)
FROM USERS 
-----
Create OR Replace Function edad_is(xid IN INT)
return VARCHAR
IS
	mesage VARCHAR2(10);
	EDAD int;
BEGIN
	SELECT AGE INTO EDAD
	FROM USERS 
	WHERE ID=xid;
	IF EDAD >= 25
	THEN
		mesage:='si';
	ELSE
		mesage:='NO';
	END IF;
return mesage;
END edad_is
--- sql
SELECT USERNAME, AGE, edad_is(id)
FROM USERS 

--- 17 de octubre presentacion de las practicas en auxiliatura
-- formato
-- nombre, ci, 
-- poner el modelo relacional
-- enunciado
-- codigo; incluye funciones, procedimientos etc
-- captura del resultado
-- en pdf
-- en la practica cmabiar por float o int