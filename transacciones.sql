create DATABASE sistema if	not EXISTS;

-- creacion de tablas
create table cuentas(
	numero_cuenta int primary key,
	balance float check(balance >=0.0)
);
-- check(balance >=0.0) es una restriccion
insert into cuentas(numero_cuenta, balance) values (1,1000);
insert into cuentas(numero_cuenta, balance) values (2,1000);
insert into cuentas(numero_cuenta, balance) values (3,1000);

select * from cuentas;
