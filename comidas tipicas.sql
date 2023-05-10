--crear tabla
create table cocina_chilena(
id int primary key,
	nombre varchar(50)
);

--DML
--insertar
insert into cocina_chilena (id, nombre) VALUES (1, 'Pantrucas');
insert into cocina_chilena (id, nombre) VALUES (2, 'umitas');
insert into cocina_chilena (id, nombre) VALUES ('3', 'Porotos');
insert into cocina_chilena VALUES (4, 'lentejas');
insert into cocina_chilena (nombre, id) VALUES ('garbanzos', 5);

--UPDATE nombretabla SET nombrecolumna = valor nuevo WHERE condición
UPDATE cocina_chilena SET nombre = 'humitas' WHERE id = 2;


UPDATE cocina_chilena SET nombre = 'empanadas';
--DELETE
delete from cocina_chilena where id = 4;
delete from cocina_chilena where nombre = 'empanadas';