--Funciones:
-- 1. Funciones que reciben el RFC y regresa la edad de los clientes y empleados de los viveros.
CREATE FUNCTION Emeplado_edad(RFC_ VARCHAR) RETURNS table(nombre VARCHAR,Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,Edad double precision) as
$$
	select nombre,Apellido_Paterno,Apellido_Materno,date_part('year',age(Fecha_de_nacimiento)) as edad from EMPLEADO_R1 A where A.rfc = RFC_;
$$	LANGUAGE sql;
COMMENT ON FUNCTION Emeplado_edad(RFC_ VARCHAR) IS
'Funcion que recibe un RFC y regresa la edad de un empleado con su nombre.';

CREATE FUNCTION Cliente_edad(RFC_ VARCHAR) RETURNS table(nombre VARCHAR,Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,Edad double precision) as
$$
	select A.nombre,A.Apellido_Paterno,A.Apellido_Materno,date_part('year',age(Fecha_de_nacimiento)) from CLIENTE_R2 B 
	join CLIENTE_R1 A on A.codigo_cliente = B.codigo_cliente where B.rfc = RFC_;
$$	LANGUAGE sql;
COMMENT ON FUNCTION Cliente_edad(RFC_ VARCHAR) IS
'Funcion que recibe un RFC y regresa la edad de un cliente con su nombre.';

-- 2. Función que recibe el ID del empleado y regresa el número de ventas que ha realizado.
CREATE FUNCTION Numero_Ventas(id_EV INT) RETURNS table(nombre VARCHAR,Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,numero_ventas bigint) as
$$
	select A.nombre,A.Apellido_Paterno,A.Apellido_Materno,count(B.Id_Empleado_que_ayudo_a_cliente) from EMPLEADO_R1 A
	join venta_fisica_r1 B on A.Id_Empleado = B.Id_Empleado_que_ayudo_a_cliente
	where B.Id_Empleado_que_ayudo_a_cliente = id_EV
	group by A.nombre,A.Apellido_Paterno,A.Apellido_Materno
$$	LANGUAGE sql;  
COMMENT ON FUNCTION Numero_Ventas(id_EV INT) IS
'Funcion que recibe un id de un empleado y regresa el numero de ventas que ha realizado.';

-- 3. Funcion que recibe el id de un cliente y nos regresa su información.
CREATE FUNCTION Informacion_Cliente(id_C INT) RETURNS table(Id_Cliente INT,Codigo_cliente VARCHAR,sNombre VARCHAR,Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,
Fecha_de_nacimiento DATE,Direccion VARCHAR,RFC VARCHAR) as
$$
	select A.Id_Cliente,B.Codigo_cliente,A.Nombre,A.Apellido_Paterno,A.Apellido_Materno,B.Fecha_de_nacimiento,B.Direccion,B.RFC from CLIENTE_R1 A
	join CLIENTE_R2 B on A.codigo_cliente = B.codigo_cliente where id_C = A.Id_Cliente
$$	LANGUAGE sql;  
COMMENT ON FUNCTION Informacion_Cliente(id_C INT) IS
'Funcion que recibe un id de un cliente y regresa todos sus datos.';

-- 4. Función que recibe el nombre del empleado con su fecha de nacimiento y regresa su RFC.
CREATE FUNCTION Empleado_RFC(Nombr VARCHAR,ApellidoP VARCHAR, ApellidoM VARCHAR, FechaB date) RETURNS VARCHAR as
$$
	select RFC from EMPLEADO_R1 A where A.Nombre = Nombr and A.Apellido_Paterno = ApellidoP and A.Apellido_Materno = ApellidoM and A.Fecha_de_nacimiento = FechaB;
$$	LANGUAGE sql;
COMMENT ON FUNCTION Empleado_RFC(Nombr VARCHAR,ApellidoP VARCHAR, ApellidoM VARCHAR, FechaB date) IS
'Funcion que recibe el nombre completo de un emplado junto con su fecha de nacimiento y regresa su RFC.';

-- 5. Función que recibe el id del cliente y regrese la informacion de sus 3 tipos de pago.
CREATE FUNCTION Cliente_Compras(id_c int) RETURNS table(Efectivo bigint,Tarjeta_de_Debito bigint,Tarjeta_de_Credito bigint) as
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
COMMENT ON FUNCTION Cliente_Compras(id_c int) IS
'Funcion que recibe id de un cliente y regresa la informacion de sus tipos de pago.';

--Funciones extras para consultas
CREATE FUNCTION Cliente_edad_C(codigo_c VARCHAR) RETURNS double precision as
$$
	select date_part('year',age(Fecha_de_nacimiento)) from CLIENTE_R2 A
	join VENTA_FISICA_r1 B on A.codigo_cliente = B.codigo_cliente where A.codigo_cliente = codigo_c;
$$	LANGUAGE sql;
COMMENT ON FUNCTION Cliente_edad_C(RFC_ VARCHAR) IS
'Funcion que recibe un codigo de cliente y regresa la edad de un cliente.';

CREATE FUNCTION Numero_Vent_E(id_EV INT) RETURNS bigint as
$$
	select count(B.Id_Empleado_que_ayudo_a_cliente) from EMPLEADO_R1 A
	join venta_fisica_r1 B on A.Id_Empleado = B.Id_Empleado_que_ayudo_a_cliente
	where B.Id_Empleado_que_ayudo_a_cliente = id_EV
	group by A.nombre,A.Apellido_Paterno,A.Apellido_Materno
$$	LANGUAGE sql;  
COMMENT ON FUNCTION Numero_Vent_E(id_EV INT) IS
'Funcion que recibe un id de un empleado y regresa el numero de ventas que ha realizado.';

CREATE FUNCTION Cliente_Compras_Hist(id_c int) RETURNS table(Nombre_cliente record,Efectivo bigint,Tarjeta_de_Debito bigint,Tarjeta_de_Credito bigint) as
$$
	SELECT T4,T1.efectivo,T2.Tarjeta_de_Debito,T3.Tarjeta_de_Credito FROM 
	(SELECT sum(total_productos) as efectivo FROM venta_fisica_r1 A
	JOIN venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket JOIN cliente_r1 C on A.codigo_cliente = C.codigo_cliente
	where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Efectivo' and id_c = C.Id_Cliente) T1 ,

	(SELECT sum(total_productos) as Tarjeta_de_Debito FROM venta_fisica_r1 A
	JOIN venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket JOIN cliente_r1 C on A.codigo_cliente = C.codigo_cliente
	where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Tarjeta de Debito' and id_c = C.Id_Cliente) T2 ,

	(SELECT sum(total_productos) as Tarjeta_de_Credito FROM venta_fisica_r1 A
	JOIN venta_fisica_r2 B on A.Numero_ticket = B.Numero_ticket JOIN cliente_r1 C on A.codigo_cliente = C.codigo_cliente
	where A.codigo_cliente = C.codigo_cliente and A.forma_de_pago = 'Tarjeta de Credito' and id_c = C.Id_Cliente) T3 ,

	(SELECT A.Nombre, A.Apellido_Paterno, A.Apellido_Materno FROM CLIENTE_R1 A where id_Cliente = id_c) T4
$$	LANGUAGE sql;
COMMENT ON FUNCTION Cliente_Compras_Hist(id_c int) IS
'Funcion que recibe id de un cliente y regresa la informacion de sus tipos de pago.';