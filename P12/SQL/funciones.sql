--Funciones:
-- 1. Una función que reciba el RFC y nos regrese la edad de los clientes y empleados de los viveros.
create function Emeplado_edad(RFC_ varchar) returns double precision as
$$
	select date_part('year',age(Fecha_de_nacimiento)) from EMPLEADO_R1 A where A.rfc = RFC_;
$$	LANGUAGE sql;

create function Cliente_edad(RFC_ varchar) returns double precision as
$$
	select date_part('year',age(Fecha_de_nacimiento)) from CLIENTE_R2 A where A.rfc = RFC_;
$$	LANGUAGE sql;

-- 2. Una función que reciba el ID del empleado y nos regrese el número de ventas que ha realizado.
create function Numero_Ventas(id_EV INT) returns bigint as
$$
	select count(B.Id_Empleado_que_ayudo_a_cliente) from EMPLEADO_R1 A
	join venta_fisica_r1 B on A.Id_Empleado = B.Id_Empleado_que_ayudo_a_cliente
	where B.Id_Empleado_que_ayudo_a_cliente = id_EV
$$	LANGUAGE sql;  

-- 3. Una función que reciba el RFC y te regrese el número de días faltantes para el cumpleaños del empleado o del cliente.
create function Empleado_dias_cumpleaños(RFC_ varchar) returns double precision as
$$
	select abs(extract(day from current_date::timestamp - Fecha_de_nacimiento::timestamp))
	from EMPLEADO_R1 A where A.rfc = RFC_;
$$	LANGUAGE sql;

create function Cliente_dias_cumpleaños(RFC_ varchar) returns double precision as
$$
	select abs(extract(day from current_date::timestamp - Fecha_de_nacimiento::timestamp))
	from cliente_r2 A where A.rfc = RFC_;
$$	LANGUAGE sql;

-- 4. Una función que reciba el nombre del empleado y su fecha de nacimiento y te regrese su RFC
create function Empleado_RFC(Nombr varchar,ApellidoP varchar, ApellidoM varchar, FechaB date) returns varchar as
$$
	select RFC from EMPLEADO_R1 A where A.Nombre = Nombr and A.Apellido_Paterno = ApellidoP and A.Apellido_Materno = ApellidoM and A.Fecha_de_nacimiento = FechaB;
$$	LANGUAGE sql;

-- 5. Una función que reciba el id del cliente y nos regrese 3 valores
create function Cliente_Compras(id_c int) returns table (Efectivo bigint,Tarjeta_de_Debito bigint,Tarjeta_de_Credito bigint) as
$$
select T1.efectivo,T2.Tarjeta_de_Debito,T3.Tarjeta_de_Credito from 
(select sum(total_productos) as efectivo from venta_fisica_r1 A
join venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket join cliente_r1 C on A.codigo_cliente = C.codigo_cliente
where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Efectivo' and id_c = C.Id_Cliente) T1 ,

(select sum(total_productos) as Tarjeta_de_Debito from venta_fisica_r1 A
join venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket join cliente_r1 C on A.codigo_cliente = C.codigo_cliente
where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Tarjeta de Debito' and id_c = C.Id_Cliente) T2 ,

(select sum(total_productos) as Tarjeta_de_Credito from venta_fisica_r1 A
join venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket join cliente_r1 C on A.codigo_cliente = C.codigo_cliente
where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Tarjeta de Credito' and id_c = C.Id_Cliente) T3
$$	LANGUAGE sql;