use proyecto_final;

drop table if exists log_cliente;

-- Creamos tabla de LOG sobre la tabla Cliente
create table log_cliente (
id_log int auto_increment primary key, -- ID de tabla nueva
nombre_accion varchar (10), -- Podrá ser "Insert"/"Delete"
nombre_tabla varchar (100), -- Será "Cliente"
usuario varchar (100), -- "Usuario que realizó el cambio"
fecha date, -- Fecha en la que se realizó el cambio
hora time -- Hora en la que se realizó el cambio
);

drop trigger if exists trg_log_cliente_insert;

-- Crear Trigger de Insert
delimiter //
-- Popula tabla de LOG antes de un Insert en Cliente
create trigger trg_log_cliente_insert before insert on cliente
for each row
begin
-- Popular tabla de Logs con info necesaria
insert into log_cliente values (null, 'Insert', 'Cliente', current_user(), curdate(), now());
end //
delimiter ;

drop trigger if exists trg_log_cliente_delete;

-- Crear Trigger de Delete
delimiter //
-- Popula tabla de LOG antes de un Delete en Cliente
create trigger trg_log_cliente_delete before delete on cliente
for each row
begin
-- Popular tabla de Logs con info necesaria
insert into log_cliente values (null, 'Delete', 'Cliente', current_user(), curdate(), now());
end //
delimiter ;


-- Insert y Delete para activar los triggers
insert into cliente values (null, 'Yo con trigger 2', '201406832323659');
delete from cliente where (id_cliente = 19);

-- Prueba si la info se cargó en la tabla de logs correctamente
select * from log_cliente;


drop table if exists log_transaccion;

-- Creamos tabla de LOG sobre la tabla Transacción
create table log_transaccion (
id_log int auto_increment primary key, -- ID de tabla nueva
nombre_accion varchar (10), -- Podrá ser "Insert"/"Delete"
nombre_tabla varchar (100), -- Será "Transacción"
usuario varchar (100), -- "Usuario que realizó el cambio"
fecha date, -- Fecha en la que se realizó el cambio
hora time -- Hora en la que se realizó el cambio
);

drop trigger if exists trg_log_cliente_insert;

-- Crear Trigger de Insert
delimiter //
-- Popula tabla de LOG antes de un Insert en Transacción
create trigger trg_log_transaccion_insert before insert on Transaccion
for each row
begin
-- Popular tabla de Logs con info necesaria
insert into log_transaccion values (null, 'Insert', 'Transacción', current_user(), curdate(), now());
end //
delimiter ;

-- Crear Trigger de Update
delimiter //
-- Popula tabla de LOG antes de un Update en Transacción
create trigger trg_log_transaccion_update before insert on Transaccion
for each row
begin
-- Popular tabla de Logs con info necesaria
insert into log_transaccion values (null, 'Insert', 'Update', current_user(), curdate(), now());
end //
delimiter ;

insert into transaccion values (null, '2022-02-09', '3548702810226187', 4124.52, '5018768388783745290');
update transaccion set monto = 1000.00 where (id_transaccion = 7);

select * from log_transaccion;
