use proyecto_final;

drop function if exists fn_cantidadClientesDeUnBanco;

delimiter //
create function fn_cantidadClientesDeUnBanco (banco CHAR(30))
returns int
deterministic
begin
declare cantidad int;

set cantidad =
			(	select count(cli.id_cliente)
				from cliente cli
				join cuenta cue
				on cue.id_cliente = cli.id_cliente
				join sucursal s
				on s.id_sucursal = cue.id_sucursal_cuenta
				join banco b
				on s.id_banco = b.id_banco
				where b.nombre = banco
			);

return cantidad;
end

//
delimiter ;

select fn_cantidadClientesDeUnBanco('Santander') as cantidadClientesDeBanco;


delimiter $$
create function fn_deudaMaxima (nombreCliente CHAR (50))
returns decimal(10.2)
deterministic
begin

declare deudaMaxima decimal(10.2);
set deudaMaxima =
					(	select MAX(d.monto)
						from cliente c
						join deuda d
						on c.id_cliente = d.id_cliente_deuda
						where c.nombre = nombreCliente
					);
return deudaMaxima;
end
$$
delimiter ;


select fn_deudaMaxima('Amanda Cobos Requena') as deudaMaxima;