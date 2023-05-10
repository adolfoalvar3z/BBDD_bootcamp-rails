--script--
begin;
 update cuentas set balance= 1000 where numero_cuenta = 1;
 update cuentas set balance= 1000 where numero_cuenta = 2;
 SAVEPOINT punto_inicial;
 update cuentas set balance= balance - 1000 where numero_cuenta = 1;
 update cuentas set balance= balance + 1000 where numero_cuenta = 2;
 ROLLBACK TO punto_inicial;
 insert into cuentas(numero_cuenta, balance) values (3,2000);
 SAVEPOINT punto_inicial2;
 update cuentas set balance= balance - 2000 where numero_cuenta = 3;
 ROLLBACK TO punto_inicial2;
commit;

--ejercicio

ALTER TABLE cuentas add