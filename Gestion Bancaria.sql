drop schema proyecto_final;
create schema if not exists proyecto_final;
use proyecto_final;

create table if not exists banco (
id_banco int not null AUTO_INCREMENT,
nombre varchar (100),
direccion varchar (150),
PRIMARY KEY (id_banco)
);

create table if not exists sucursal (
id_sucursal int AUTO_INCREMENT,
direccion_sucursal varchar (150),
id_banco int,
PRIMARY KEY (id_sucursal),
constraint id_banco FOREIGN KEY (id_banco) REFERENCES banco(id_banco)
);

create table if not exists empleado (
id_empleado int AUTO_INCREMENT,
nombre_apellido varchar (150),
PRIMARY KEY (id_empleado)
);

create table if not exists sucursal_empleado (
id_sucursal_empleado int AUTO_INCREMENT,
id_sucursal_rel int,
id_empleado_rel int,
constraint id_sucursal_rel foreign key (id_sucursal_rel) references sucursal (id_sucursal),
constraint id_empleado_rel foreign key (id_empleado_rel) references empleado (id_empleado),
PRIMARY KEY (id_sucursal_empleado)
);

create table if not exists cliente (
id_cliente int auto_increment,
nombre varchar (150),
nro_cuenta varchar (100),
primary key (id_cliente)
);

create table if not exists cuenta (
id_cuenta int auto_increment primary key,
id_cliente int,
id_sucursal_cuenta int,
constraint id_cliente foreign key (id_cliente) references cliente (id_cliente),
constraint id_sucursal_cuenta foreign key (id_sucursal_cuenta) references sucursal (id_sucursal)
);

create table if not exists tarjeta (
id_tarjeta int auto_increment,
numero varchar (100),
codigo smallint,
fecha_vencimiento date,
id_cuenta int,
primary key (id_tarjeta),
constraint id_cuenta foreign key (id_cuenta) references cuenta (id_cuenta)
);

create table if not exists operacion (
id_operacion int auto_increment,
descripcion varchar (150),
primary key (id_operacion)
);

create table if not exists transaccion (
id_transaccion int auto_increment,
fecha date,
origen varchar (100),
monto decimal (10,2),
destino varchar (100),
primary key (id_transaccion)
);

create table if not exists deuda (
id_deuda int auto_increment,
monto decimal (10,2),
fecha date,
id_cliente int,
primary key (id_deuda),
constraint id_cliente_deuda foreign key (id_cliente) references cliente (id_cliente)
);

create table if not exists prestamo (
id_prestamo int auto_increment,
id_operacion int,
monto decimal (10,2),
fecha date,
primary key (id_prestamo),
constraint id_operacion foreign key (id_operacion) references operacion (id_operacion) 
);

create table if not exists transferencia (
id_transferencia int auto_increment,
id_transaccion int,
primary key (id_transferencia),
constraint id_transaccion foreign key (id_transaccion) references transaccion (id_transaccion)
);

create table if not exists cliente_operacion_transaccion (
id_cliente_operacion_transaccion int auto_increment,
id_cliente_rel int,
id_operacion_rel int,
id_transaccion_rel int,
constraint id_cliente_rel foreign key (id_cliente_rel) references cliente (id_cliente),
constraint id_operacion_rel foreign key (id_operacion_rel) references operacion (id_operacion),
constraint id_transaccion_rel foreign key (id_transaccion_rel) references transaccion (id_transaccion),
primary key (id_cliente_operacion_transaccion)
);