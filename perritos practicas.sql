SELECT * from perros;
create database mascotas;
create table perros (id int, nombre varchar(50), raza varchar(50), edad smallint);
alter TABLE perros add PRIMARY KEY (id);

INSERT into perros (id, nombre, raza, edad) VALUES(1,'wensenlao', 'doberman', 2);
INSERT into perros (id, nombre, raza, edad) VALUES(2,'subzero', 'siberiano', 5);
INSERT into perros (id, nombre, raza, edad) VALUES(3,'doco', 'pastor Aleman', 10);
INSERT into perros (id, nombre, raza, edad) VALUES(4,'nino', 'koker spanish', 12);
INSERT into perros (id, nombre, raza, edad) VALUES(5,'negro mata carabineros :V', 'kiltrito', 15);

update perros SET edad = 10 where id = 1;
update perros SET raza = 'Husky' where id = 2; 
update perros SET nombre = 'Nino' where id = 4; 
update perros SET nombre = 'Negro acaricia pacos' where id = 5;

delete FROM perros where id = 5;