--se crea base de datos
create database estudiantes;

--se crea tabla
create table alumnos(
id serial not null unique primary key,
rut varchar(10) not null unique, 
nombres varchar(50) not null,
apellidos varchar(50) not null
);

--insertan datos
insert into alumnos(rut, nombres, apellidos) values('12345678-0','Paula','Vilches');
insert into alumnos(rut, nombres, apellidos) values('12345679-0','Paula','Rebolledo');
insert into alumnos(rut, nombres, apellidos) values('12345689-0','Cesar','Santiz');
insert into alumnos(rut, nombres, apellidos) values('23456789-0','Cesar','Gonzalez');
insert into alumnos(rut, nombres, apellidos) values('13456789-0','Felipe','Guerra');
insert into alumnos(rut, nombres, apellidos) values('12456789-0','Felipe','Jara');
insert into alumnos(rut, nombres, apellidos) values('12356789-0','Cesar','Pérez');
insert into alumnos(rut, nombres, apellidos) values('12346789-0','Juan','Segura');
insert into alumnos(rut, nombres, apellidos) values('12345789-0','Adolfo','Alvarez');
insert into alumnos(rut, nombres, apellidos) values('12345699-0','Adolfo','Rebolledo');

--muestra datos
Select * from alumnos;

--trae nombres repetidos y cuantas veces
SELECT nombres, count(nombres) as numero_alumnos
from alumnos
Group by nombres
HAVING COUNT(nombres) > 1;
