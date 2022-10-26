use proyecto_final;

create or replace view clientesConDeudas as(
select c.id_cliente, nombre
from cliente c join deuda d
on c.id_cliente = d.id_cliente);

select * from clientesConDeudas;


create or replace view tarjetasProximasAVencer as(
select s.id_sucursal, t.id_tarjeta, t.fecha_vencimiento
from sucursal s 
inner join cuenta c
inner join tarjeta t
on t.id_cuenta = c.id_cuenta
and c.id_sucursal_cuenta = s.id_sucursal
and datediff(fecha_vencimiento, now()) >-90
and datediff(fecha_vencimiento, now()) < 0);

select * from tarjetasProximasAVencer;


create or replace view transferenciasMayoresA3000 as(
select transac.id_transaccion, fecha, origen, monto, destino, id_transferencia from transaccion transac
join transferencia transfer
on transac.monto > 3000);

select * from transferenciasMayoresA3000;


create or replace view todosLosClientes as(
select id_cliente, nombre
from cliente);

select * from todosLosClientes;


create or replace view clientesDeBancoSantander as(
select cli.id_cliente, cli.nombre
from cliente cli
join cuenta cue
on cue.id_cliente = cli.id_cliente
join sucursal s
on s.id_sucursal = cue.id_sucursal_cuenta
join banco b
on s.id_banco = b.id_banco
where b.nombre = 'Santander');

select * from clientesDeBancoSantander;