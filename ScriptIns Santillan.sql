use proyecto_final;

insert into banco values (null, 'Galicia', 'Tte. J.D. Perón 407');
insert into banco values (null, 'Santander', 'Jerónimo Salguero 3212');
insert into banco values (null, 'Patagonia', 'Av. Sta. Fe 3725');
insert into banco values (null, 'HSBC', 'Av. del Libertador 2694');
insert into banco values (null, 'Nacion', 'Av. Sta. Fe 4162');

insert into cliente values (null, 'Sara Perea', '3548702810226187');
insert into cliente values (null, 'Ligia Eugenia Abella Linares', '201406832377259');
insert into cliente values (null, 'Amanda Cobos Requena', '3541464675567331');
insert into cliente values (null, 'Jose Carlos Jáuregui', '3533446949826478');
insert into cliente values (null, 'Ezequiel Prat Castelló', '3555282760882883');
insert into cliente values (null, 'Tito Boix Girón', '3582444736433780');
insert into cliente values (null, 'Cruz Portero', '6767844587962140293');
insert into cliente values (null, 'María José Eligia Aller Palacios', '3541442744147863');
insert into cliente values (null, 'Miguela Pascual Blanco', '5018768388783745290');
insert into cliente values (null, 'Azeneth del Castrillo', '4911437100494289');
insert into cliente values (null, 'Milagros Pujadas Gutiérrez', '5100145636720352');
insert into cliente values (null, 'Angelita Barreda', '3589967492596229');
insert into cliente values (null, 'Mario Eligio Arnal Gil', '201458658112567');
insert into cliente values (null, 'Brígida Doménech Lucena', '5602245204021652061');
insert into cliente values (null, 'Beatriz del Guardiola', '3544762838086991');
insert into cliente values (null, 'Inés Haro Barberá','4508691770768245');
insert into cliente values (null, 'Maximiano Cuenca-Pastor', '3561622543886952');
insert into cliente values (null, 'Melisa Llopis Díaz', '5007669839267089');
insert into cliente values (null, 'Modesto Gutierrez Sarmiento', '30560630617709');
insert into cliente values (null, 'Otilia Giménez Abri', '374288881511561');

insert into sucursal values (null, 'Av. Francisco Beiro 4229, C1419HZE Villa Devoto, Buenos Aires', 1);
insert into sucursal values (null, 'Av. Del Libertador Gral. San Martín 1101, B1650 San Martín, Provincia de Buenos Airess', 1);
insert into sucursal values (null, 'Rivadavia 9711, C1407 CABA, Buenos Aires', 2);
insert into sucursal values (null, 'Av. de los Constituyentes 5857, C1431EZJ CABA', 2);
insert into sucursal values (null, 'Av. Cabildo 1939, C1428 CABA', 3);
insert into sucursal values (null, 'Rivadavia 6744, C1406 CABA', 3);
insert into sucursal values (null, 'Gral. Las Heras 2958, C1425 AST, Buenos Aires', 4);
insert into sucursal values (null, 'Avenida Santa Fe 3117 CABA, C1425 BGG, Buenos Aires', 4);
insert into sucursal values (null, 'Gral. Las Heras 2111, C1425 CABA', 5);
insert into sucursal values (null, 'Av. Alvear 1936, C1129 CABA', 5);

insert into cuenta values (null, 3, 5);
insert into cuenta values (null, 5, 4);
insert into cuenta values (null, 2, 6);
insert into cuenta values (null, 1, 7);
insert into cuenta values (null, 6, 3);
insert into cuenta values (null, 9, 1);
insert into cuenta values (null, 8, 9);

insert into deuda values (null, 2000, '2022-03-02', 1);
insert into deuda values (null, 3400, '2022-05-14', 4);
insert into deuda values (null, 2178, '2021-06-03', 5);
insert into deuda values (null, 5000, '2020-05-27', 3);
insert into deuda values (null, 4600, '2019-03-26', 7);
insert into deuda values (null, 4850, '2021-12-17', 8);

insert into empleado values (null, 'Bernardino Acuña Ferrando');
insert into empleado values (null, 'Celestino Cerdá Riera');
insert into empleado values (null, 'Manuela Machado');
insert into empleado values (null, 'Begoña Andrade Luque');
insert into empleado values (null, 'Cristian Llamas Rojas');
insert into empleado values (null, 'Carlos de Alsina');
insert into empleado values (null, 'Adolfo Aguirre');
insert into empleado values (null, 'Roldán Pou Aranda');
insert into empleado values (null, 'Nicanor Tejedor-Infante');
insert into empleado values (null, 'Graciela Aller-Sans');

insert into operacion values (null, 'Pedido generado por home banking');
insert into operacion values (null, 'Pedido generado de forma presencial');
insert into operacion values (null, 'Consulta telefonica');
insert into operacion values (null, 'Consulta via formulario web');
insert into operacion values (null, 'Consulta via asesor online');

insert into prestamo values (null, 1, 5000, '2020-05-27');
insert into prestamo values (null, 2, 2000, '2022-03-02');
insert into prestamo values (null, 3, 4600, '2019-03-26');
insert into prestamo values (null, 4, 3400, '2022-05-14');
insert into prestamo values (null, 5, 4850, '2021-12-17');

insert into tarjeta values (null, '3530609037578144', 425, '2025-12-29', 1);
insert into tarjeta values (null, '6759468411610183179', 468, '2021-04-21', 3);
insert into tarjeta values (null, '30230722629299', 852, '2024-04-28', 4);
insert into tarjeta values (null, '5602232722839543722', 265, '2026-10-13', 5);
insert into tarjeta values (null, '676104372991118659', 469, '2015-10-21', 6);
insert into tarjeta values (null, '3570602824476474', 310, '2022-09-01', 2);

insert into transaccion values (null, '2022-02-09', '3548702810226187', 4300.21, '5018768388783745290');
insert into transaccion values (null, '2021-11-27', '3582444736433780', 1000, '5100145636720352');
insert into transaccion values (null, '2022-07-26', '30560630617709', 3462.58, '374288881511561');
insert into transaccion values (null, '2022-06-14', '3541464675567331', 1867.12, '3544762838086991');
insert into transaccion values (null, '2022-07-10', '3582444736433780', 1868, '3555282760882883');
insert into transaccion values (null, '2021-11-29', '3589967492596229', 1687.21, '5007669839267089');

insert into transferencia values (null, 1);
insert into transferencia values (null, 2);
insert into transferencia values (null, 3);
insert into transferencia values (null, 4);
insert into transferencia values (null, 5);
insert into transferencia values (null, 6);