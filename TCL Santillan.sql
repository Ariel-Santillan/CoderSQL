use proyecto_final;

-- Uso de tabla Cliente

set @@autocommit = 0;
START TRANSACTION;
-- Borro los registros asociados al id_cliente = 2 para no usar la sentencia de ignorar FK
delete from tarjeta where id_tarjeta = 2;
delete from cuenta where id_cuenta= 3;
delete from cliente where id_cliente = 2;
-- rollback;
-- commit;

-- Uso de tabla Banco

set @@autocommit = 0;
START TRANSACTION;

insert into banco values (null, 'Galicia', 'Direccion 1');
insert into banco values (null, 'Santander', 'Direccion 2');
insert into banco values (null, 'Patagonia', 'Direccion 3');
insert into banco values (null, 'HSBC', 'Direccion 4');
savepoint sp0;
insert into banco values (null, 'Nacion', 'Direccion 5');
insert into banco values (null, 'Galicia', 'Direccion 6');
insert into banco values (null, 'Santander', 'Direccion 7');
insert into banco values (null, 'Patagonia', 'Direccion 8');
savepoint sp1;

-- RELEASE SAVEPOINT sp0;