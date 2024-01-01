--1
select * from empleado
where date_part('year',age('01/01/2021',fecha_inicio_servicio)) >= 15
order by fecha_inicio_servicio;

--2
select a.Nombre,a.Apellido_Paterno,a.Apellido_Materno,date_part('year',age('01/01/2021',fecha_inicio_servicio))as edad,
c.tipo_de_rol as puesto,a.fecha_inicio_servicio from empleado a
join TIENE_EMP b on a.id_empleado = b.id_empleado join rol c on b.id_rol = c.id_rol
order by a.Nombre, a.fecha_inicio_servicio desc;

--3
select b.Nombre as nombre_vivero,a.Numero_de_plantas from plantas a
join vivero b on b.id_vivero = a.id_planta
where a.numero_de_plantas = (select max(Numero_de_plantas) from plantas)

--4
select a.Nombre,a.Apellido_Paterno,a.Apellido_Materno,b.fecha_venta_f,count(fecha_venta_f)as numero_ventas,d.nombre as Vivero
from empleado a join VENTA_FISICA b on a.id_empleado = b.Id_Empleado_que_ayudo_a_cliente
join VENTA_f c on c.Id_Venta_Fisica = b.Id_Venta_Fisica join vivero d on c.Id_Vivero = d.Id_Vivero
group by a.Nombre,a.Apellido_Paterno,a.Apellido_Materno,b.fecha_venta_f,d.nombre

--5
select a.fecha_venta_f,count(fecha_venta_f)as cantidad_de_ventas, c.nombre as nombre_vivero
from VENTA_FISICA a join venta_f b on a.Id_Venta_Fisica = b.Id_Venta_Fisica
join vivero c on c.Id_Vivero = b.Id_Vivero
group by fecha_venta_f, c.nombre

--6
--Tipo de pago mas recurrente electronico
select max(tipo_de_pago)as Mas_recurrente_electronico from pago_e
--Tipo de pago mas recurrente fisico
select max(tipo_de_pago)as Mas_recurrente_fisico from pago_f