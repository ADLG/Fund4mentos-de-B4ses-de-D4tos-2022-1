-- Consultas
-- 1. Consulta que devuelve el nombre de los empleados que tienen mas de 30 años junto con el vivero en donde trabajan.
SELECT C.Nombre,A.nombre,date_part('year',age(Fecha_de_nacimiento)) as Edad FROM Empleado_r1 A
JOIN Trabajar B on A.Id_Empleado = B.Id_Empleado JOIN Vivero C on C.Id_Vivero = B.Id_Empleado
Where date_part('year',age(Fecha_de_nacimiento)) > 30

-- 2. Consulta que devuelve la edad de un cliente junto con la informaicion de todas sus compras fisicas.
-- En esta consulta para hacer uso de una funcion se requerira dar el codigo de cliente, en este caso fue del Cliente con el codigo A1.
SELECT distinct A.codigo_cliente,A.fecha_venta_f as Fecha_de_venta,C.Nombre_producto,B.Numero_de_productos_adquiridos,(SELECT Cliente_edad_C('A1')) as edad FROM venta_fisica_r1 A
JOIN venta_fisica_r2 B on A.clave_producto = B.clave_producto JOIN venta_fisica_r3 C on C.clave_producto = B.clave_producto
Where A.codigo_cliente = 'A1'

-- 3. Consulta que devuelve la suma de las ventas fisicas que han realizado los empleados junto con su nombre y RFC.
SELECT A.nombre,A.RFC,count(B.Id_Empleado_que_ayudo_a_cliente) as Numero_Ventas_Fisicas FROM EMPLEADO_R1 A
JOIN venta_fisica_r1 B on A.Id_Empleado = B.Id_Empleado_que_ayudo_a_cliente
JOIN EMPLEADO_R2 C on A.Curp = C.Curp
group by A.nombre,A.RFC

-- 4. Consulta que devuelve la cantidad de plantas que tiene cada vivero con el nombre de estas.
SELECT A.nombre as Nombre_vivero,D.nombre as Nombre_Plantas,D.numero_de_plantas FROM vivero A
JOIN TIENE_PLA B on A.id_vivero = B.id_vivero JOIN plantas_r1 C on C.Id_Planta = B.Id_planta
JOIN plantas_r2 D on D.Nombre = C.Nombre

-- 5. Consulta que devuelve el nombre de los empleados junto con su rol y años de edad ademas del vivero en el que laboran.
SELECT A.Nombre,A.Apellido_Paterno,A.Apellido_Materno,E.Tipo_de_Rol,date_part('year',age(Fecha_de_nacimiento)) as Edad,
C.nombre as nombre_Vivero FROM Empleado_r1 A
JOIN Trabajar B on A.Id_Empleado = B.Id_Empleado JOIN Vivero C on C.Id_Vivero = B.Id_Vivero
JOIN TIENE_EMP D on D.Id_Empleado = A.Id_Empleado JOIN Rol E on E.Id_Rol = D.Id_Rol

-- 6. Consulta que devuelve la informacion de los metodos de pago de un cliente acorde a su id de cliente con ayuda de una funcion.
-- En este caso sera el cliente con el Id = 1
select * from Cliente_Compras_Hist('1')

-- 7. Consulta que devuelve el codigo y nombre completo de los clientes que viven en el "Estado de México"
SELECT B.codigo_cliente,A.Nombre, A.Apellido_Paterno, A.Apellido_Materno,B.Direccion FROM cliente_r2 B
JOIN cliente_r1 A on A.codigo_cliente = B.codigo_cliente
where direccion like '%Estado de México%'
