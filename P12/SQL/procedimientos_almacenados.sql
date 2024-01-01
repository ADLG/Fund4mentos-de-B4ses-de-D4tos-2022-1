--Procedimientos almacenados:
-- 1. Un procedimiento el cual se encarga de registrar un empleado
CREATE OR REPLACE FUNCTION Registra_Empleado(Id_Empleado INT,CURP VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Fecha_de_nacimiento DATE,RFC VARCHAR,Salario REAL,Fecha_Inicio_servicio DATE,Direccion VARCHAR) RETURNS VOID AS
$$  
    INSERT INTO empleado_r2 VALUES (CURP,Salario,Fecha_Inicio_servicio,Direccion);
    INSERT INTO empleado_r1 VALUES (Id_Empleado,CURP,Nombre,Apellido_Paterno,Apellido_Materno,Fecha_de_nacimiento,RFC);
$$  LANGUAGE sql;

-- 2. Un procedimiento el cual se encargue de eliminar un empleado
CREATE OR REPLACE FUNCTION Elimina_Empleado(id_Emp INT) RETURNS VOID AS
$$  
    DELETE FROM controlar where id_Emp = id_empleado;
    DELETE FROM tiene_emp where id_Emp = id_empleado;
    DELETE FROM correo_emp where id_Emp = id_empleado;
    DELETE FROM telefono_emp where id_Emp = id_empleado;
    DELETE FROM trabajar where id_Emp = id_empleado;
    ALTER TABLE EMPLEADO_R1 DROP CONSTRAINT EMPLEADO_R1_FK1;
    ALTER TABLE EMPLEADO_R1 ADD CONSTRAINT EMPLEADO_R1_FK1
    FOREIGN KEY (CURP) REFERENCES EMPLEADO_R2(CURP) ON DELETE CASCADE;
    DELETE FROM empleado_r2 WHERE curp = (select A.curp from empleado_r2 A join empleado_r1 B on a.curp = b.curp where b.id_empleado = id_Emp);
    DELETE FROM empleado_r1 WHERE id_Emp = id_empleado;
    UPDATE VENTA_FISICA_R1 SET Id_Empleado_que_ayudo_a_cliente = NULL,Empleado_que_efectuo_el_cobro = NULL where Id_Empleado_que_ayudo_a_cliente = id_Emp;
$$  LANGUAGE sql;

-- 3. Un procedimiento el cual se encargue de registrar las ventas físicas realizadas por un cliente.
CREATE OR REPLACE FUNCTION Registra_Venta_Fisica(Id_Cliente INT,Id_Venta_Fisica INT,Numero_ticket INT,Codigo_cliente VARCHAR,Clave_producto VARCHAR,Fecha_Venta_f DATE,Id_Empleado_que_ayudo_a_cliente INT,
Empleado_que_efectuo_el_cobro INT,Vivero_donde_se_adquirio INT,Forma_de_pago VARCHAR,Numero_de_productos_adquiridos INT,Total_productos INT) RETURNS VOID AS
$$  
    INSERT INTO VENTA_FISICA_r2 VALUES (Numero_ticket,Clave_producto,Numero_de_productos_adquiridos,Total_productos);
    INSERT INTO VENTA_FISICA_r1 VALUES (Id_Venta_Fisica,Numero_ticket,Codigo_cliente,Clave_producto,Fecha_Venta_f,Id_Empleado_que_ayudo_a_cliente,Empleado_que_efectuo_el_cobro,Vivero_donde_se_adquirio,Forma_de_pago);
    INSERT INTO COMPRAR_tipo_f VALUES (Id_Venta_Fisica,Id_Cliente);
$$  LANGUAGE sql;

-- 4. Un procedimiento el cual se encargue de registrar las ventas online realizadas por un cliente.
CREATE OR REPLACE FUNCTION Registra_Venta_Electronica(Id_Cliente INT,Id_Ventas_electronicas INT,Numero_de_seguimiento INT,Fecha_Venta_e DATE,Codigo_cliente VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Numero_de_productos INT,Desglose_de_productos_adquiridos VARCHAR,Precio_a_pagar REAL,Direccion_de_envio VARCHAR,Fecha_de_pedido DATE,Forma_de_pago VARCHAR,Total REAL) RETURNS VOID AS
$$  
    INSERT INTO VENTAS_ELECTRONICAS_r2 VALUES (Numero_de_seguimiento,Direccion_de_envio,Fecha_de_pedido,Forma_de_pago,Total);
    INSERT INTO VENTAS_ELECTRONICAS_r1 VALUES (Id_Ventas_electronicas,Numero_de_seguimiento,Fecha_Venta_e,Codigo_cliente,Nombre,Apellido_Paterno,Apellido_Materno,Numero_de_productos,Desglose_de_productos_adquiridos,Precio_a_pagar);
    INSERT INTO COMPRAR_tipo_e VALUES (Id_Ventas_electronicas,Id_Cliente);
$$  LANGUAGE sql;


