--Procedimientos almacenados:
-- 1.Procedimiento que se encarga de registrar Viveros.
CREATE OR REPLACE FUNCTION Registra_Vivero(Id_Vivero INT,Nombre VARCHAR,Fecha_de_apertura DATE) RETURNS VOID as
$$
    INSERT INTO vivero VALUES(Id_Vivero,Nombre,Fecha_de_apertura)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Vivero(Id_Vivero INT,Nombre VARCHAR,Fecha_de_apertura DATE) IS
'Procedimiento que se encarga de registrar Viveros con su Id, Nombre y su Fecha de apertura.';

-- 2.Procedimiento que se encarga de insertar un Regsitro de las plantas productoras.
CREATE OR REPLACE FUNCTION Registra_Registro(Id_Registro INT,Nombre VARCHAR,Genero VARCHAR,Fecha_de_adquisicion DATE,Ultimo_riego DATE,Ultimo_fertilizante DATE,Ultima_fumigacion DATE) RETURNS VOID as
$$
    INSERT INTO REGISTRO_R2 VALUES(Genero,Fecha_de_adquisicion,Ultimo_riego,Ultimo_fertilizante,Ultima_fumigacion);
    INSERT INTO REGISTRO_R1 VALUES(Id_Registro,Genero,Nombre)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Registro(Id_Registro INT,Nombre VARCHAR,Genero VARCHAR,Fecha_de_adquisicion DATE,Ultimo_riego DATE,Ultimo_fertilizante DATE,Ultima_fumigacion DATE) IS
'Procedimiento que se encarga de registrar los Registros de las plantas productoras con su Id, Nombre, Genero ademas de Fechas de adquisicion, riego, fertilizante y fumigacion.';

-- 3.Procedimiento que se encarga de registrar Empleados.
CREATE OR REPLACE FUNCTION Registra_Empleado(Id_Empleado INT,CURP VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Fecha_de_nacimiento DATE,RFC VARCHAR,Salario REAL,Fecha_Inicio_servicio DATE,Direccion VARCHAR) RETURNS VOID AS
$$  
    INSERT INTO empleado_r2 VALUES (CURP,Salario,Fecha_Inicio_servicio,Direccion);
    INSERT INTO empleado_r1 VALUES (Id_Empleado,CURP,Nombre,Apellido_Paterno,Apellido_Materno,Fecha_de_nacimiento,RFC);
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Empleado(Id_Empleado INT,CURP VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Fecha_de_nacimiento DATE,RFC VARCHAR,Salario REAL,Fecha_Inicio_servicio DATE,Direccion VARCHAR) IS
'Procedimiento que se encarga de registrar Empleados con su Id, CURP, Nombre completo, Fecha de nacimiento, RFC, Salario, Fecha en la que inicio su servicio y su Direccion.';

-- 4.Procedimiento que se encarga de registrar las semillas germinadas.
CREATE OR REPLACE FUNCTION Registra_Semillas_Germinadas(Id_Semillas_Germinadas INT,Semillas_germinadas INT,Origen VARCHAR,Fecha_de_siembra DATE,Ultimo_riego DATE,Ultimo_fertilizante DATE,Ultima_fumigacion DATE) RETURNS VOID as
$$
    INSERT INTO Semillas_Germinadas_R2 VALUES(Origen,Fecha_de_siembra,Ultimo_riego,Ultimo_fertilizante,Ultima_fumigacion);
    INSERT INTO Semillas_Germinadas_R1 VALUES(Id_Semillas_Germinadas,Origen,Semillas_germinadas)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Semillas_Germinadas(Id_Semillas_Germinadas INT,Semillas_germinadas INT,Origen VARCHAR,Fecha_de_siembra DATE,Ultimo_riego DATE,Ultimo_fertilizante DATE,Ultima_fumigacion DATE) IS
'Procedimiento que se encarga de registrar Viveros con su Id, Cantidad de semillas germinadas, origen, Fechas de riego, siembra, fertilizante y fumigacion.';

-- 5.Procedimiento que se encarga de registrar Clientes.
CREATE OR REPLACE FUNCTION Registra_Cliente(Id_Cliente INT,Codigo_cliente VARCHAR,Nombre VARCHAR,
    Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,Fecha_de_nacimiento DATE,Direccion VARCHAR,RFC VARCHAR) RETURNS VOID as
$$
    INSERT INTO CLIENTE_R2 VALUES(Codigo_cliente,Fecha_de_nacimiento,Direccion,RFC);
    INSERT INTO CLIENTE_R1 VALUES(Id_Cliente,Codigo_cliente,Nombre,Apellido_Paterno,Apellido_Materno)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Cliente(Id_Cliente INT,Codigo_cliente VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,Apellido_Materno VARCHAR,Fecha_de_nacimiento DATE,Direccion VARCHAR,RFC VARCHAR) IS
'Procedimiento que se encarga de registrar Clientes con su Id, codigo de cliente, nombre completo, fecha de nacimiento, Direccion y su RFC.';

-- 6.Procedimiento que se encarga de registrar las ventas físicas producto de compras por un cliente.
CREATE OR REPLACE FUNCTION Registra_Venta_Fisica(Id_Cliente INT,Id_Venta_Fisica INT,Numero_ticket INT,Codigo_cliente VARCHAR,Clave_producto VARCHAR,Fecha_Venta_f DATE,Id_Empleado_que_ayudo_a_cliente INT,
Empleado_que_efectuo_el_cobro INT,Vivero_donde_se_adquirio INT,Forma_de_pago VARCHAR,Numero_de_productos_adquiridos INT,Total_productos INT) RETURNS VOID AS
$$  
    INSERT INTO VENTA_FISICA_r2 VALUES (Numero_ticket,Clave_producto,Numero_de_productos_adquiridos,Total_productos);
    INSERT INTO VENTA_FISICA_r1 VALUES (Id_Venta_Fisica,Numero_ticket,Codigo_cliente,Clave_producto,Fecha_Venta_f,Id_Empleado_que_ayudo_a_cliente,Empleado_que_efectuo_el_cobro,Vivero_donde_se_adquirio,Forma_de_pago);
    INSERT INTO COMPRAR_tipo_f VALUES (Id_Venta_Fisica,Id_Cliente);
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Venta_Fisica(Id_Cliente INT,Id_Venta_Fisica INT,Numero_ticket INT,Codigo_cliente VARCHAR,Clave_producto VARCHAR,Fecha_Venta_f DATE,Id_Empleado_que_ayudo_a_cliente INT,
Empleado_que_efectuo_el_cobro INT,Vivero_donde_se_adquirio INT,Forma_de_pago VARCHAR,Numero_de_productos_adquiridos INT,Total_productos INT) IS
'Procedimiento que se encarga de registrar los datos de las ventas fisicas cuando un cliente realiza una compra fisicamente.';

-- 7.Procedimiento que se encarga de registrar las ventas online producto de compras por un cliente.
CREATE OR REPLACE FUNCTION Registra_Venta_Electronica(Id_Cliente INT,Id_Ventas_electronicas INT,Numero_de_seguimiento INT,Fecha_Venta_e DATE,Codigo_cliente VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Numero_de_productos INT,Desglose_de_productos_adquiridos VARCHAR,Precio_a_pagar REAL,Direccion_de_envio VARCHAR,Fecha_de_pedido DATE,Forma_de_pago VARCHAR,Total REAL) RETURNS VOID AS
$$  
    INSERT INTO VENTAS_ELECTRONICAS_r2 VALUES (Numero_de_seguimiento,Direccion_de_envio,Fecha_de_pedido,Forma_de_pago,Total);
    INSERT INTO VENTAS_ELECTRONICAS_r1 VALUES (Id_Ventas_electronicas,Numero_de_seguimiento,Fecha_Venta_e,Codigo_cliente,Nombre,Apellido_Paterno,Apellido_Materno,Numero_de_productos,Desglose_de_productos_adquiridos,Precio_a_pagar);
    INSERT INTO COMPRAR_tipo_e VALUES (Id_Ventas_electronicas,Id_Cliente);
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Venta_Electronica(Id_Cliente INT,Id_Ventas_electronicas INT,Numero_de_seguimiento INT,Fecha_Venta_e DATE,Codigo_cliente VARCHAR,Nombre VARCHAR,Apellido_Paterno VARCHAR,
Apellido_Materno VARCHAR,Numero_de_productos INT,Desglose_de_productos_adquiridos VARCHAR,Precio_a_pagar REAL,Direccion_de_envio VARCHAR,Fecha_de_pedido DATE,Forma_de_pago VARCHAR,Total REAL)
IS 'Procedimiento que se encarga de registrar los datos de las ventas electronicas cuando un cliente realiza una compra online.';

-- 8.Procedimiento para insertar datos en la tabla Registra_Pago_f.
CREATE OR REPLACE FUNCTION Registra_Pago_f(Id_Pago_f INT,Tipo_de_pago VARCHAR) RETURNS VOID as
$$
    INSERT INTO Pago_f VALUES(Id_Pago_f,Tipo_de_pago)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Pago_f(Id_Pago_f INT,Tipo_de_pago VARCHAR) IS 'Procedimiento para insertar datos en la tabla Registra_Pago_f.';

-- 9.Procedimiento para insertar datos en la tabla Registra_Pago_e.
CREATE OR REPLACE FUNCTION Registra_Pago_e(Id_Pago_e INT,Tipo_de_pago VARCHAR) RETURNS VOID as
$$
    INSERT INTO Pago_e VALUES(Id_Pago_e,Tipo_de_pago)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Pago_e(Id_Pago_e INT,Tipo_de_pago VARCHAR) IS 'Procedimiento para insertar datos en la tabla Registra_Pago_e.';

-- 10.Procedimiento para insertar datos en la tabla Registra_TELEFONO_VIV.
CREATE OR REPLACE FUNCTION Registra_TELEFONO_VIV(Id_Vivero INT,Id_Telefono INT,Telefono VARCHAR) RETURNS VOID as
$$
    INSERT INTO TELEFONO_VIV VALUES(Id_Vivero,Id_Telefono,Telefono)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TELEFONO_VIV(Id_Vivero INT,Id_Telefono INT,Telefono VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_TELEFONO_VIV.';

-- 11.Procedimiento para insertar datos en la tabla Registra_DIRECCION_VIV.
CREATE OR REPLACE FUNCTION Registra_DIRECCION_VIV(Id_Vivero INT,Id_Direccion INT,Direccion VARCHAR) RETURNS VOID as
$$
    INSERT INTO DIRECCION_VIV VALUES(Id_Vivero,Id_Direccion,Direccion)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_DIRECCION_VIV(Id_Vivero INT,Id_Direccion INT,Direccion VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_DIRECCION_VIV.';

-- 12.Procedimiento para insertar datos en la tabla Registra_REGISTRAR.
CREATE OR REPLACE FUNCTION Registra_REGISTRAR(Id_Vivero INT,Id_Registro INT) RETURNS VOID as
$$
    INSERT INTO REGISTRAR VALUES(Id_Vivero,Id_Registro)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_REGISTRAR(Id_Vivero INT,Id_Registro INT) IS '.Procedimiento para insertar datos en la tabla Registra_REGISTRAR.';

-- 13.Procedimiento para insertar datos en la tabla Registra_TRABAJAR.
CREATE OR REPLACE FUNCTION Registra_TRABAJAR(Id_Vivero INT,Id_Empleado INT) RETURNS VOID as
$$
    INSERT INTO TRABAJAR VALUES(Id_Vivero,Id_Empleado)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TRABAJAR(Id_Vivero INT,Id_Empleado INT) IS '.Procedimiento para insertar datos en la tabla Registra_TRABAJAR.';

-- 14.Procedimiento para insertar datos en la tabla Registra_TELEFONO_EMP.
CREATE OR REPLACE FUNCTION Registra_TELEFONO_EMP(Id_Empleado INT,Id_Telefono INT,Telefono VARCHAR) RETURNS VOID as
$$
    INSERT INTO TELEFONO_EMP VALUES(Id_Empleado,Id_Telefono,Telefono)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TELEFONO_EMP(Id_Empleado INT,Id_Telefono INT,Telefono VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_TELEFONO_EMP.';

-- 15.Procedimiento para insertar datos en la tabla Registra_CORREO_EMP.
CREATE OR REPLACE FUNCTION Registra_CORREO_EMP(Id_Empleado INT,Id_Correo INT,Correo VARCHAR) RETURNS VOID as
$$
    INSERT INTO CORREO_EMP VALUES(Id_Empleado,Id_Correo,Correo)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_CORREO_EMP(Id_Empleado INT,Id_Correo INT,Correo VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_CORREO_EMP.';

-- 16.Procedimiento para insertar datos en la tabla Registra_TIENE_EMP.
CREATE OR REPLACE FUNCTION Registra_TIENE_EMP(Id_Empleado INT,Id_Rol INT) RETURNS VOID as
$$
    INSERT INTO TIENE_EMP VALUES(Id_Empleado,Id_Rol)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TIENE_EMP(Id_Empleado INT,Id_Rol INT) IS '.Procedimiento para insertar datos en la tabla Registra_TIENE_EMP.';

-- 17.Procedimiento para insertar datos en la tabla Registra_Controlar.
CREATE OR REPLACE FUNCTION Registra_Controlar(Id_Empleado INT,Id_Semillas INT) RETURNS VOID as
$$
    INSERT INTO Controlar VALUES(Id_Empleado,Id_Semillas)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Controlar(Id_Empleado INT,Id_Semillas INT) IS '.Procedimiento para insertar datos en la tabla Registra_Controlar.';

-- 18.Procedimiento para insertar datos en la tabla Registra_Germinado.
CREATE OR REPLACE FUNCTION Registra_Germinado(Id_Semillas INT,Id_Semillas_Germinadas INT) RETURNS VOID as
$$
    INSERT INTO Germinado VALUES(Id_Semillas,Id_Semillas_Germinadas)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_Germinado(Id_Semillas INT,Id_Semillas_Germinadas INT) IS '.Procedimiento para insertar datos en la tabla Registra_Germinado.';

-- 19.Procedimiento para insertar datos en la tabla Registra_TIENE_PLA.
CREATE OR REPLACE FUNCTION Registra_TIENE_PLA(Id_Vivero INT,Id_Planta INT) RETURNS VOID as
$$
    INSERT INTO TIENE_PLA VALUES(Id_Vivero,Id_Planta)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TIENE_PLA(Id_Vivero INT,Id_Planta INT) IS '.Procedimiento para insertar datos en la tabla Registra_TIENE_PLA.';

-- 20.Procedimiento para insertar datos en la tabla Registra_VENTA_f.
CREATE OR REPLACE FUNCTION Registra_VENTA_f(Id_Vivero INT,Id_Venta_Fisica INT) RETURNS VOID as
$$
    INSERT INTO VENTA_f VALUES(Id_Vivero,Id_Venta_Fisica)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_VENTA_f(Id_Vivero INT,Id_Venta_Fisica INT) IS '.Procedimiento para insertar datos en la tabla Registra_VENTA_f.';

-- 21.Procedimiento para insertar datos en la tabla Registra_VENTA_e.
CREATE OR REPLACE FUNCTION Registra_VENTA_e(Id_Vivero INT,Id_Ventas_electronicas INT) RETURNS VOID as
$$
    INSERT INTO VENTA_e VALUES(Id_Vivero,Id_Ventas_electronicas)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_VENTA_e(Id_Vivero INT,Id_Ventas_electronicas INT) IS '.Procedimiento para insertar datos en la tabla Registra_VENTA_e.';

-- 22.Procedimiento para insertar datos en la tabla Registra_REGISTRA_f.
CREATE OR REPLACE FUNCTION Registra_REGISTRA_f(Id_Venta_Fisica INT,Id_Pago_f INT) RETURNS VOID as
$$
    INSERT INTO REGISTRA_f VALUES(Id_Venta_Fisica,Id_Pago_f)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_REGISTRA_f(Id_Venta_Fisica INT,Id_Pago_f INT) IS '.Procedimiento para insertar datos en la tabla Registra_REGISTRA_f.';

-- 23.Procedimiento para insertar datos en la tabla Registra_REGISTRA_e.
CREATE OR REPLACE FUNCTION Registra_REGISTRA_e(Id_Ventas_electronicas INT,Id_Pago_e INT) RETURNS VOID as
$$
    INSERT INTO REGISTRA_e VALUES(Id_Ventas_electronicas,Id_Pago_e)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_REGISTRA_e(Id_Ventas_electronicas INT,Id_Pago_e INT) IS '.Procedimiento para insertar datos en la tabla Registra_REGISTRA_e.';

-- 24.Procedimiento para insertar datos en la tabla Registra_COMPRAR_tipo_f.
CREATE OR REPLACE FUNCTION Registra_COMPRAR_tipo_f(Id_Venta_Fisica INT,Id_Cliente INT) RETURNS VOID as
$$
    INSERT INTO COMPRAR_tipo_f VALUES(Id_Venta_Fisica,Id_Cliente)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_COMPRAR_tipo_f(Id_Venta_Fisica INT,Id_Cliente INT) IS '.Procedimiento para insertar datos en la tabla Registra_COMPRAR_tipo_f.';

-- 25.Procedimiento para insertar datos en la tabla Registra_COMPRAR_tipo_e.
CREATE OR REPLACE FUNCTION Registra_COMPRAR_tipo_e(Id_Ventas_electronicas INT,Id_Cliente INT) RETURNS VOID as
$$
    INSERT INTO COMPRAR_tipo_e VALUES(Id_Ventas_electronicas,Id_Cliente)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_COMPRAR_tipo_e(Id_Ventas_electronicas INT,Id_Cliente INT) IS '.Procedimiento para insertar datos en la tabla Registra_COMPRAR_tipo_e.';

-- 26.Procedimiento para insertar datos en la tabla Registra_TELEFONO_CLI.
CREATE OR REPLACE FUNCTION Registra_TELEFONO_CLI(Id_Cliente INT,Id_Telefono INT,Telefono VARCHAR) RETURNS VOID as
$$
    INSERT INTO TELEFONO_CLI VALUES(Id_Cliente,Id_Telefono,Telefono)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_TELEFONO_CLI(Id_Cliente INT,Id_Telefono INT,Telefono VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_TELEFONO_CLI.';

-- 27.Procedimiento para insertar datos en la tabla Registra_CORREO_CLI.
CREATE OR REPLACE FUNCTION Registra_CORREO_CLI(Id_Cliente INT,Id_Correo INT,Correo VARCHAR) RETURNS VOID as
$$
    INSERT INTO CORREO_CLI VALUES(Id_Cliente,Id_Correo,Correo)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_CORREO_CLI(Id_Cliente INT,Id_Correo INT,Correo VARCHAR) IS '.Procedimiento para insertar datos en la tabla Registra_CORREO_CLI.';

-- 28.Procedimiento para insertar datos en la tabla Registra_area.
CREATE OR REPLACE FUNCTION Registra_area(Id_Planta INT,Id_Tipo_de_Planta INT) RETURNS VOID as
$$
    INSERT INTO area VALUES(Id_Planta,Id_Tipo_de_Planta)
$$  LANGUAGE sql;
COMMENT ON FUNCTION Registra_area(Id_Planta INT,Id_Tipo_de_Planta INT) IS '.Procedimiento para insertar datos en la tabla Registra_area.';


