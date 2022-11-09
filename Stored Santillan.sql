use proyecto_final;

drop procedure if exists sp_ordenamiento;

delimiter //
create procedure sp_ordenamiento (	in nombreTabla varchar (30),
									in campoOrderBy varchar (30),
									in orderByTipo varchar (4)
								 )
begin
-- Concatena strings fijos + parámetros de entrada para guardar la query final en una variable
set @algo = CONCAT ('SELECT * FROM ', nombreTabla, ' ORDER BY ', campoOrderBy, ' ', orderByTipo);
-- Precompila string con query completa
prepare param_stmt from @algo;
-- Ejecuta query
execute param_stmt;
-- Liberar statement compilado
deallocate prepare param_stmt;
end //
delimiter ;

-- Inicializar parámetros de entrada para el SP
set @nombreTabla = 'banco';
set @campoOrderBy = 'nombre';
set @orderByTipo = 'asc';

-- Ejecutar SP
call sp_ordenamiento (@nombreTabla, @campoOrderBy, @orderByTipo);

use proyecto_final;

drop procedure if exists sp_agregarEliminarBanco;

delimiter $$
create procedure sp_agregarEliminarBanco (	in agregarOEliminar varchar (20),
											in agregarNombre varchar (100),
                                            in agregarDireccion varchar (150),
                                            in eliminarID int
									)
begin
-- Concatena strings fijos + parámetros de entrada para guardar la query final en una variable

-- Si el valor del parámetro ingresado es insert
IF agregarOEliminar = 'Insert' THEN
-- Generamos la query para insert
set @agregarEliminar = CONCAT ('INSERT INTO BANCO VALUES (NULL, ', agregarNombre, ', ', agregarDireccion, ')');
-- Si no generamos la query para delete por id
ELSE
set @agregarEliminar = CONCAT ('delete from BANCO where id_banco = ', eliminarID );

END IF;
-- Precompila string con query completa
prepare param_stmt from @agregarEliminar;
-- Ejecuta query
execute param_stmt;
-- Liberar statement compilado
deallocate prepare param_stmt;
end $$
delimiter ;

-- Inicializar parámetros de entrada para el SP. Los valores de agregarNombre y agregarDireccion deben estar entre comillas dobles
set @agregarOEliminar = 'Insert';
set @agregarNombre = '"nombre1"';
set @agregarDireccion = '"direccion1"';
set @eliminarID = null;

-- Ejecutar SP
call sp_agregarEliminarBanco (@agregarOEliminar, @agregarNombre, @agregarDireccion, @eliminarID);