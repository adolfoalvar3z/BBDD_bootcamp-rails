--CREAMOS TABLA CLIENTES
CREATE TABLE clientes (
 ID serial PRIMARY KEY,
 nombre VARCHAR (50) NOT NULL,
 apellido VARCHAR (50) NOT NULL,
 rut VARCHAR (10) NOT NULL UNIQUE,
 telefono VARCHAR (16),
 email VARCHAR (50)
 );
 
 --CREAMOS TABLA CUENTAS
 CREATE TABLE cuentas (
 ID serial PRIMARY KEY,
 numero_cuenta INT NOT NULL UNIQUE,
 fecha_creacion DATE NOT NULL,
 balance INT CHECK (balance >= 0 ),
 cliente_id INT,
 FOREIGN KEY (cliente_id) REFERENCES clientes (ID)
 );

--INSERTAR DATOS EN CLIENTES
INSERT INTO clientes (nombre, apellido, rut, telefono, email) VALUES ('cliente1','apellido1','1111111111','+569111111111','cliente1@mail.cl');
INSERT INTO clientes (nombre, apellido, rut, telefono, email) VALUES ('cliente2','apellido2','2222222222','+569111111111','cliente1@mail.cl');
INSERT INTO clientes (nombre, apellido, rut, telefono, email) VALUES ('cliente3','apellido3','3333333333','+569111111111','cliente1@mail.cl');
SELECT * FROM clientes;

--INSERTAR DATOS EN CUENTAS
INSERT INTO cuentas (numero_cuenta, fecha_creacion, balance, cliente_id) VALUES (1111111, '05/08/2023', 10000, 1);
INSERT INTO cuentas (numero_cuenta, fecha_creacion, balance, cliente_id) VALUES (1111122, '05/08/2023', 20000, 3);
INSERT INTO cuentas (numero_cuenta, fecha_creacion, balance, cliente_id) VALUES (1111133, '05/08/2023', 30000, 2);
SELECT * FROM cuentas;

--ELIMINAMOS UNA CUENTA
DELETE FROM cuentas WHERE cliente_id=1;
SELECT * FROM cuentas;

--ELIMINAMOS UN CLIENTE
DELETE FROM clientes WHERE id=1;
SELECT * FROM clientes;

--ACTUALIZAMOS EL BALANCE DE LA CUENTA
UPDATE cuentas SET balance=9999999 WHERE cliente_id=3;
SELECT * FROM cuentas;

--AGREGAMOS UNA NUEVA COLUMNA
ALTER TABLE clientes ADD sucursal varchar(50);

--INNER JOIN PARA MOSTRAR TODOS LOS DATOS
SELECT * FROM cuentas cta
INNER JOIN clientes cli
ON cta.cliente_id = cli.id;

--ELIMINAMOS LA COLUMNA SUCURSAL
ALTER TABLE clientes DROP COLUMN sucursal;

--VOLVEMOS A CREAR LA COLUMNA SUCURSAL CON UN VALOR DEFAULT
ALTER TABLE clientes ADD sucursal varchar(50) default 'mesa central';
--MOSTRAR LA ULTIMA MODIFICACION
SELECT * FROM clientes;