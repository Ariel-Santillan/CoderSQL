use proyecto_final;

-- Crear Usuario 1

drop user if exists 'Usuario1'@'localhost';
create user if not exists 'Usuario1'@'localhost' identified by '1234';

-- Tendrá permisos de select sólamente
grant select on proyecto_final.* to 'Usuario1'@'localhost';

-- Crear Usuario 2

drop user if exists 'Usuario2'@'localhost';
create user if not exists 'Usuario2'@'localhost' identified by '123456';

-- Tendrá permisos de select, insert y update

grant select, insert, update on proyecto_final.* to 'Usuario2'@'localhost';