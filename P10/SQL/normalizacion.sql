--DDL de la Practica 10.
CREATE TABLE VIVERO (
	Id_Vivero INT NOT NULL,
	Nombre VARCHAR(20) NOT NULL,
	Fecha_de_apertura DATE NOT NULL
);

ALTER TABLE VIVERO ADD CONSTRAINT VIVERO_PK
PRIMARY KEY (Id_Vivero);

COMMENT ON COLUMN VIVERO.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN VIVERO.Nombre IS 'Nombre del Vivero.';
COMMENT ON COLUMN VIVERO.Fecha_de_apertura IS 'Fecha de apertura del Vivero.';
COMMENT ON TABLE VIVERO IS 'Contiene la información de los Viveros.';


CREATE TABLE REGISTRO_R2 (
	Genero VARCHAR(30) NOT NULL,
	Fecha_de_adquisicion DATE,
	Ultimo_riego DATE,
	Ultimo_fertilizante DATE,
	Ultima_fumigacion DATE
);

ALTER TABLE REGISTRO_R2 ADD CONSTRAINT REGISTRO_R2_PK
PRIMARY KEY (Genero);

COMMENT ON COLUMN REGISTRO_R2.Genero IS 'Genero de la planta productora.';
COMMENT ON COLUMN REGISTRO_R2.Fecha_de_adquisicion IS 'Fecha de adquisicion.';
COMMENT ON COLUMN REGISTRO_R2.Ultimo_riego IS 'Fecha del ultimo riego.';
COMMENT ON COLUMN REGISTRO_R2.Ultimo_fertilizante IS 'Fecha del ultimo fertilizante.';
COMMENT ON COLUMN REGISTRO_R2.Ultima_fumigacion IS 'Fecha de la ultima fumigacion.';
COMMENT ON TABLE REGISTRO_R2 IS 'Contiene la información de las Fechas de ejemplares productoras.';

CREATE TABLE REGISTRO_R1 (
	Id_Registro INT NOT NULL,
	Genero VARCHAR(30) NOT NULL,
	Nombre VARCHAR(20) NOT NULL
);

ALTER TABLE REGISTRO_R1 ADD CONSTRAINT REGISTRO_R1_PK
PRIMARY KEY (Id_Registro);
ALTER TABLE REGISTRO_R1 ADD CONSTRAINT REGISTRO_R1_FK1
FOREIGN KEY (Genero) REFERENCES REGISTRO_R2(Genero);

COMMENT ON COLUMN REGISTRO_R1.Id_Registro IS 'Identificador del Registro.';
COMMENT ON COLUMN REGISTRO_R1.Nombre IS 'Nombre del Registro.';
COMMENT ON COLUMN REGISTRO_R1.Genero IS 'Genero de la planta productora.';
COMMENT ON TABLE REGISTRO_R1 IS 'Contiene la información de los Registros de ejemplares productoras.';


CREATE TABLE EMPLEADO_R2 (
	CURP VARCHAR(20) NOT NULL,
	Salario REAL,
	Fecha_Inicio_servicio DATE,
	Direccion VARCHAR(40)
);

ALTER TABLE EMPLEADO_R2 ADD CONSTRAINT EMPLEADO_R2_PK
PRIMARY KEY (CURP);

COMMENT ON COLUMN EMPLEADO_R2.CURP IS 'CURP del Empleado.';
COMMENT ON COLUMN EMPLEADO_R2.Direccion IS 'Direccion del Empleado.';
COMMENT ON COLUMN EMPLEADO_R2.Salario IS 'Salario del Empleado.';
COMMENT ON COLUMN EMPLEADO_R2.Fecha_Inicio_servicio IS 'Fecha en la que inicio a trabajar el empleado';
COMMENT ON TABLE EMPLEADO_R2 IS 'Contiene la Fecha, Direccion y Salario de empleados acorde a su CURP.';

CREATE TABLE EMPLEADO_R1 (
	Id_Empleado INT NOT NULL,
	CURP VARCHAR(20) NOT NULL,
	Nombre VARCHAR(20) NOT NULL,
	Apellido_Paterno VARCHAR(20) NOT NULL,
	Apellido_Materno VARCHAR(20) NOT NULL,
	Fecha_de_nacimiento DATE
);

ALTER TABLE EMPLEADO_R1 ADD CONSTRAINT EMPLEADO_R1_PK
PRIMARY KEY (Id_Empleado);
ALTER TABLE EMPLEADO_R1 ADD CONSTRAINT EMPLEADO_R1_FK1
FOREIGN KEY (CURP) REFERENCES EMPLEADO_R2(CURP);

COMMENT ON COLUMN EMPLEADO_R1.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN EMPLEADO_R1.CURP IS 'CURP del Empleado.';
COMMENT ON COLUMN EMPLEADO_R1.Nombre IS 'Nombre del Empleado.';
COMMENT ON COLUMN EMPLEADO_R1.Apellido_Paterno IS 'Apellido Paterno del Empleado.';
COMMENT ON COLUMN EMPLEADO_R1.Apellido_Materno IS 'Apellido Materno del Empleado.';
COMMENT ON COLUMN EMPLEADO_R1.Fecha_de_nacimiento IS 'Fecha de nacimiento del Empleado.';
COMMENT ON TABLE EMPLEADO_R1 IS 'Contiene la información de los Empleados.';


CREATE TABLE Rol (
	Id_Rol INT NOT NULL,
	Tipo_de_Rol VARCHAR(50)
);

ALTER TABLE Rol ADD CONSTRAINT Rol_PK
PRIMARY KEY (Id_Rol);

COMMENT ON COLUMN Rol.Id_Rol IS 'Identificador del Rol del Empleado.';
COMMENT ON COLUMN Rol.Tipo_de_Rol IS 'Nombre del rol del Empleado.';
COMMENT ON TABLE Rol IS 'Contiene el nombre del rol de los Empleados.';


CREATE TABLE Semillas_R2 (
	Planta_de_cruce VARCHAR(20) NOT NULL,
	Fecha_de_polinizacion DATE,
	Cantidad_de_semillas INT
);

ALTER TABLE Semillas_R2 ADD CONSTRAINT Semillas_R2_PK
PRIMARY KEY (Planta_de_cruce);

COMMENT ON COLUMN Semillas_R2.Planta_de_cruce IS 'Panta de cruce.';
COMMENT ON COLUMN Semillas_R2.Fecha_de_polinizacion IS 'Fecha de polinizacion de las Semillas.';
COMMENT ON COLUMN Semillas_R2.Cantidad_de_semillas IS 'Cantidad de Semillas.';
COMMENT ON TABLE Semillas_R2 IS 'Contiene las fechas de polinizacion y cantidad de semillas acorde a la planta de cruce.';

CREATE TABLE Semillas_R1 (
	Id_Semillas INT NOT NULL,
	Planta_de_cruce VARCHAR(20)
);

ALTER TABLE Semillas_R1 ADD CONSTRAINT Semillas_R1_PK
PRIMARY KEY (Id_Semillas);
ALTER TABLE Semillas_R1 ADD CONSTRAINT Semillas_R1_FK1
FOREIGN KEY (Planta_de_cruce) REFERENCES Semillas_R2(Planta_de_cruce);

COMMENT ON COLUMN Semillas_R1.Id_Semillas IS 'Identificador de las Semillas.';
COMMENT ON COLUMN Semillas_R1.Planta_de_cruce IS 'Panta de cruce.';
COMMENT ON TABLE Semillas_R1 IS 'Contiene el id de Semillas y nombre de las plantas de cruce.';


CREATE TABLE Semillas_Germinadas_R2 (
	Origen VARCHAR(30) NOT NULL,
	Fecha_de_siembra DATE,
	Ultimo_riego DATE,
	Ultimo_fertilizante DATE,
	Ultima_fumigacion DATE
);

ALTER TABLE Semillas_Germinadas_R2 ADD CONSTRAINT Semillas_Germinadas_R2_PK
PRIMARY KEY (Origen);

COMMENT ON COLUMN Semillas_Germinadas_R2.Origen IS 'Origen de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas_R2.Fecha_de_siembra IS 'Fehca de siembra de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas_R2.Ultimo_riego IS 'Fecha del ultimo riego.';
COMMENT ON COLUMN Semillas_Germinadas_R2.Ultimo_fertilizante IS 'Fecha del ultimo fertilizante.';
COMMENT ON COLUMN Semillas_Germinadas_R2.Ultima_fumigacion IS 'Fecha de la ultima fumigacion.';
COMMENT ON TABLE Semillas_Germinadas_R2 IS 'Contiene origen y fechas de las semillas germinadas.';

CREATE TABLE Semillas_Germinadas_R1 (
	Id_Semillas_Germinadas INT NOT NULL,
	Origen VARCHAR(30),
	Semillas_germinadas INT
);

ALTER TABLE Semillas_Germinadas_R1 ADD CONSTRAINT Semillas_Germinadas_R1_PK
PRIMARY KEY (Id_Semillas_Germinadas);
ALTER TABLE Semillas_Germinadas_R1 ADD CONSTRAINT Semillas_Germinadas_R1_FK1
FOREIGN KEY (Origen) REFERENCES Semillas_Germinadas_R2(Origen);

COMMENT ON COLUMN Semillas_Germinadas_R1.Id_Semillas_Germinadas IS 'Identificador de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas_R1.Origen IS 'Origen de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas_R1.Semillas_germinadas IS 'Numero de Semillas Germinadas.';
COMMENT ON TABLE Semillas_Germinadas_R1 IS 'Contiene la información de las semillas germinadas.';


CREATE TABLE PLANTAS_R2 (
	Nombre VARCHAR(20) NOT NULL,
	Precio REAL,
	Numero_de_plantas INT	
);

ALTER TABLE PLANTAS_R2 ADD CONSTRAINT PLANTAS_R2_PK
PRIMARY KEY (Nombre);

COMMENT ON COLUMN PLANTAS_R2.Nombre IS 'Nombre de la Planta.';
COMMENT ON COLUMN PLANTAS_R2.Precio IS 'Precio de la Planta.';
COMMENT ON COLUMN PLANTAS_R2.Numero_de_plantas IS 'Numero de plantas.';
COMMENT ON TABLE PLANTAS_R2 IS 'Contiene la información de las Plantas.';

CREATE TABLE PLANTAS_R1 (
	Id_Planta INT NOT NULL,
	Nombre VARCHAR(20),
	Fechas_de_riego DATE,
	Fecha_de_germinacion DATE
);

ALTER TABLE PLANTAS_R1 ADD CONSTRAINT PLANTAS_R1_PK
PRIMARY KEY (Id_Planta);
ALTER TABLE PLANTAS_R1 ADD CONSTRAINT PLANTAS_R1_FK1
FOREIGN KEY (Nombre) REFERENCES PLANTAS_R2(Nombre);

COMMENT ON COLUMN PLANTAS_R1.Id_Planta IS 'Identificador de la Planta.';
COMMENT ON COLUMN PLANTAS_R1.Nombre IS 'Nombre de la Planta.';
COMMENT ON COLUMN PLANTAS_R1.Fechas_de_riego IS 'Fechas de riego de la Planta.';
COMMENT ON COLUMN PLANTAS_R1.Fecha_de_germinacion IS 'Fecha de germinacion de la Planta.';
COMMENT ON TABLE PLANTAS_R1 IS 'Contiene nombre y fechas de riego de las Plantas.';


CREATE TABLE Tipo_de_Planta_R2 (
	Nombre_del_tipo_de_planta VARCHAR(20),
	Cuidados_basicos VARCHAR(200),
	Tipo_de_sustrato VARCHAR(120)
);

ALTER TABLE Tipo_de_Planta_R2 ADD CONSTRAINT Tipo_de_Planta_R2_PK
PRIMARY KEY (Nombre_del_tipo_de_planta);

COMMENT ON COLUMN Tipo_de_Planta_R2.Nombre_del_tipo_de_planta IS 'Nombre del tipo de la planta.';
COMMENT ON COLUMN Tipo_de_Planta_R2.Cuidados_basicos IS 'Cuidados basicos de la planta.';
COMMENT ON COLUMN Tipo_de_Planta_R2.Tipo_de_sustrato IS 'Tipo de sustrato de la planta.';
COMMENT ON TABLE Tipo_de_Planta_R2 IS 'Contiene la información de los tipos de plantas.';

CREATE TABLE Tipo_de_Planta_R1 (
	Id_Tipo_de_Planta INT NOT NULL,
	Nombre_del_tipo_de_planta VARCHAR(20),
	Genero VARCHAR(30)
);

ALTER TABLE Tipo_de_Planta_R1 ADD CONSTRAINT Tipo_de_Planta_R1_PK
PRIMARY KEY (Id_Tipo_de_Planta);
ALTER TABLE Tipo_de_Planta_R1 ADD CONSTRAINT Tipo_de_Planta_R1_FK1
FOREIGN KEY (Nombre_del_tipo_de_planta) REFERENCES Tipo_de_Planta_R2(Nombre_del_tipo_de_planta);

COMMENT ON COLUMN Tipo_de_Planta_R1.Id_Tipo_de_Planta IS 'Identificador de la planta.';
COMMENT ON COLUMN Tipo_de_Planta_R1.Nombre_del_tipo_de_planta IS 'Nombre del tipo de la planta.';
COMMENT ON COLUMN Tipo_de_Planta_R1.Genero IS 'Genero de la planta.';
COMMENT ON TABLE Tipo_de_Planta_R1 IS 'Contiene nombre tipo y genero de los tipos de plantas.';


CREATE TABLE VENTA_FISICA_R3 (
	Clave_producto VARCHAR(5) NOT NULL,
	Nombre_producto VARCHAR(70),
	Precio_producto real
);

ALTER TABLE VENTA_FISICA_R3 ADD CONSTRAINT VENTA_FISICA_R3_PK
PRIMARY KEY (Clave_producto);

COMMENT ON COLUMN VENTA_FISICA_R3.Clave_producto IS 'La clave del producto.';
COMMENT ON COLUMN VENTA_FISICA_R3.Nombre_producto IS 'Nombre del producto.';
COMMENT ON COLUMN VENTA_FISICA_R3.Precio_producto IS 'Precio del producto.';
COMMENT ON TABLE VENTA_FISICA_R3 IS 'Contiene la información de los Productos.';

CREATE TABLE VENTA_FISICA_R2 (
	Numero_ticket INT NOT NULL,
	Clave_producto VARCHAR(5) NOT NULL,
	Numero_de_productos_adquiridos INT,
	Total_productos INT
);

ALTER TABLE VENTA_FISICA_R2 ADD CONSTRAINT VENTA_FISICA_R2_PK
PRIMARY KEY (Numero_ticket,Clave_producto);
ALTER TABLE VENTA_FISICA_R2 ADD CONSTRAINT VENTA_FISICA_R2_FK1
FOREIGN KEY (Clave_producto) REFERENCES VENTA_FISICA_R3(Clave_producto);

COMMENT ON COLUMN VENTA_FISICA_R2.Numero_ticket IS 'Numero de ticket.';
COMMENT ON COLUMN VENTA_FISICA_R2.Clave_producto IS 'La clave del producto.';
COMMENT ON COLUMN VENTA_FISICA_R2.Numero_de_productos_adquiridos IS 'Numero de Productos adquiridos.';
COMMENT ON COLUMN VENTA_FISICA_R2.Total_productos IS 'Costo total de Productos.';
COMMENT ON TABLE VENTA_FISICA_R2 IS 'Contiene la información del ticket y los productos comprados.';

CREATE TABLE VENTA_FISICA_R1 (
	Id_Venta_Fisica INT NOT NULL,
	Numero_ticket INT NOT NULL,
	Clave_producto VARCHAR(5) NOT NULL,
	Fecha_Venta_f DATE,
	Id_Empleado_que_ayudo_a_cliente INT,
	Empleado_que_efectuo_el_cobro VARCHAR(40),
	Vivero_donde_se_adquirio INT,
	Forma_de_pago VARCHAR(20)
);

ALTER TABLE VENTA_FISICA_R1 ADD CONSTRAINT VENTA_FISICA_R1_PK
PRIMARY KEY (Id_Venta_Fisica);
ALTER TABLE VENTA_FISICA_R1 ADD CONSTRAINT VENTA_FISICA_R1_FK1
FOREIGN KEY (Clave_producto,Numero_ticket) REFERENCES VENTA_FISICA_R2(Clave_producto,Numero_ticket);

COMMENT ON COLUMN VENTA_FISICA_R1.Id_Venta_Fisica IS 'Identificador de la Venta Fisica.';
COMMENT ON COLUMN VENTA_FISICA_R1.Numero_ticket IS 'Numero de ticket.';
COMMENT ON COLUMN VENTA_FISICA_R1.Clave_producto IS 'La clave del producto.';
COMMENT ON COLUMN VENTA_FISICA_R1.Fecha_Venta_f IS 'Fecha de la venta fisica.';
COMMENT ON COLUMN VENTA_FISICA_R1.Id_Empleado_que_ayudo_a_cliente IS 'Id del Empleado que ayudo a un cliente.';
COMMENT ON COLUMN VENTA_FISICA_R1.Empleado_que_efectuo_el_cobro IS 'Empleado que efectuo el cobro.';
COMMENT ON COLUMN VENTA_FISICA_R1.Vivero_donde_se_adquirio IS 'Vivero donde se adquirio el producto.';
COMMENT ON COLUMN VENTA_FISICA_R1.Forma_de_pago IS 'Forma de pago.';
COMMENT ON TABLE VENTA_FISICA_R1 IS 'Contiene la información de las Ventas Fisicas de los Viveros.';


CREATE TABLE VENTAS_ELECTRONICAS_R2 (
	Numero_de_seguimiento INT NOT NULL,
	Direccion_de_envio VARCHAR(100),
	Fecha_de_pedido DATE,
	Forma_de_pago VARCHAR(20),
	Total REAL
);

ALTER TABLE VENTAS_ELECTRONICAS_R2 ADD CONSTRAINT VENTAS_ELECTRONICAS_R2_PK
PRIMARY KEY (Numero_de_seguimiento);

COMMENT ON COLUMN VENTAS_ELECTRONICAS_R2.Numero_de_seguimiento IS 'El numero de seguimiento de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R2.Direccion_de_envio IS 'La Direccion a donde se mandaran los productos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R2.Fecha_de_pedido IS 'Fecha en la que se realizo el pedido.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R2.Forma_de_pago IS 'Forma de pago.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R2.Total IS 'Costo total.';
COMMENT ON TABLE VENTAS_ELECTRONICAS_R2 IS 'Contiene la información de las ventas electronicas acorde al numero de seguimiento.';

CREATE TABLE VENTAS_ELECTRONICAS_R1 (
	Id_Ventas_electronicas INT NOT NULL,
	Numero_de_seguimiento INT NOT NULL,
	Fecha_Venta_e DATE,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20),
	Numero_de_productos INT,
	Desglose_de_productos_adquiridos VARCHAR(200),
	Precio_a_pagar REAL
);

ALTER TABLE VENTAS_ELECTRONICAS_R1 ADD CONSTRAINT VENTAS_ELECTRONICAS_R1_PK
PRIMARY KEY (Id_Ventas_electronicas);
ALTER TABLE VENTAS_ELECTRONICAS_R1 ADD CONSTRAINT VENTAS_ELECTRONICAS_R1_FK1
FOREIGN KEY (Numero_de_seguimiento) REFERENCES VENTAS_ELECTRONICAS_R2(Numero_de_seguimiento);

COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Numero_de_seguimiento IS 'Numero de seguimiento de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Fecha_Venta_e IS 'Fecha de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Apellido_Paterno IS 'Apellido Paterno del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Apellido_Materno IS 'Apellido Materno del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Numero_de_productos IS 'Numero de productos adquiridos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Desglose_de_productos_adquiridos IS 'Desglose de los productos adquiridos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS_R1.Precio_a_pagar IS 'Cantidad a pagar.';
COMMENT ON TABLE VENTAS_ELECTRONICAS_R1 IS 'Contiene la información de los clientes que realizan compras electronicas.';


CREATE TABLE Pago_f (
	Id_Pago_f INT NOT NULL,
	Tipo_de_pago VARCHAR(20)
);

ALTER TABLE Pago_f ADD CONSTRAINT Pago_f_PK
PRIMARY KEY (Id_Pago_f);

COMMENT ON COLUMN Pago_f.Id_Pago_f IS 'Identificador del pago.';
COMMENT ON COLUMN Pago_f.Tipo_de_pago IS 'Nombre del tipo de pago.';
COMMENT ON TABLE Pago_f IS 'Contiene la información de los pagos fisicos.';

CREATE TABLE Pago_e (
	Id_Pago_e INT NOT NULL,
	Tipo_de_pago VARCHAR(20)
);

ALTER TABLE Pago_e ADD CONSTRAINT Pago_e_PK
PRIMARY KEY (Id_Pago_e);

COMMENT ON COLUMN Pago_e.Id_Pago_e IS 'Identificador del pago.';
COMMENT ON COLUMN Pago_e.Tipo_de_pago IS 'Nombre del tipo de pago.';
COMMENT ON TABLE Pago_e IS 'Contiene la información de los pagos electronicos.';

CREATE TABLE CLIENTE_R2 (
	Codigo_cliente VARCHAR(5) NOT NULL,
	Fecha_de_nacimiento DATE,
	Direccion VARCHAR(100)
);

ALTER TABLE CLIENTE_R2 ADD CONSTRAINT CLIENTE_R2_PK
PRIMARY KEY (Codigo_cliente);

COMMENT ON COLUMN CLIENTE_R2.Codigo_cliente IS 'Codigo del cliente.';
COMMENT ON COLUMN CLIENTE_R2.Fecha_de_nacimiento IS 'Fehca de nacimiento del cliente.';
COMMENT ON COLUMN CLIENTE_R2.Direccion IS 'Direccion del cliente.';
COMMENT ON TABLE CLIENTE_R2 IS 'Contiene la información de los clientes.';

CREATE TABLE CLIENTE_R1 (
	Id_Cliente INT NOT NULL,
	Codigo_cliente VARCHAR(5) NOT NULL,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20)
);

ALTER TABLE CLIENTE_R1 ADD CONSTRAINT CLIENTE_PK
PRIMARY KEY (Id_Cliente);

ALTER TABLE CLIENTE_R1 ADD CONSTRAINT CLIENTE_R1_FK1
FOREIGN KEY (Codigo_cliente) REFERENCES CLIENTE_R2(Codigo_cliente);

COMMENT ON COLUMN CLIENTE_R1.Id_Cliente IS 'Identificador del cliente.';
COMMENT ON COLUMN CLIENTE_R1.Codigo_cliente IS 'Codigo del cliente.';
COMMENT ON COLUMN CLIENTE_R1.Nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN CLIENTE_R1.Apellido_Paterno IS 'Apellido Paterno del cliente.';
COMMENT ON COLUMN CLIENTE_R1.Apellido_Materno IS 'Apellido Materno del cliente.';
COMMENT ON TABLE CLIENTE_R1 IS 'Contiene la información de los clientes.';

CREATE TABLE TELEFONO_VIV (
	Id_Vivero INT NOT NULL,
	Id_Telefono INT NOT NULL,
	Telefono VARCHAR(12) NOT NULL
);

ALTER TABLE TELEFONO_VIV ADD CONSTRAINT TELEFONO_VIV_PK
PRIMARY KEY (Id_Telefono, Id_Vivero);

ALTER TABLE TELEFONO_VIV ADD CONSTRAINT TELEFONO_VIV_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

COMMENT ON COLUMN TELEFONO_VIV.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN TELEFONO_VIV.Id_Telefono IS 'Identificador del Telefono del Vivero.';
COMMENT ON COLUMN TELEFONO_VIV.Telefono IS 'Numero de telefono de 12 digitos del Vivero.';
COMMENT ON TABLE TELEFONO_VIV IS 'Contiene los Telefonos de los Viveros.';

CREATE TABLE DIRECCION_VIV (
	Id_Vivero INT NOT NULL,
	Id_Direccion INT NOT NULL,
	Direccion VARCHAR(100) NOT NULL
);

ALTER TABLE DIRECCION_VIV ADD CONSTRAINT DIRECCION_VIV_PK
PRIMARY KEY (Id_Direccion, Id_Vivero);

ALTER TABLE DIRECCION_VIV ADD CONSTRAINT DIRECCION_VIV_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

COMMENT ON COLUMN DIRECCION_VIV.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN DIRECCION_VIV.Id_Direccion IS 'Identificador de la Direccion del Vivero.';
COMMENT ON COLUMN DIRECCION_VIV.Direccion IS 'Direccion del Vivero.';
COMMENT ON TABLE DIRECCION_VIV IS 'Contiene las Direcciones de los Viveros.';

CREATE TABLE REGISTRAR (
	Id_Vivero INT NOT NULL,
	Id_Registro INT NOT NULL
);

ALTER TABLE REGISTRAR ADD CONSTRAINT REGISTRAR_PK
PRIMARY KEY (Id_Registro, Id_Vivero);

ALTER TABLE REGISTRAR ADD CONSTRAINT REGISTRAR_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);
ALTER TABLE REGISTRAR ADD CONSTRAINT REGISTRAR_FK2
FOREIGN KEY (Id_Registro) REFERENCES REGISTRO_R1(Id_Registro);

COMMENT ON COLUMN REGISTRAR.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN REGISTRAR.Id_Registro IS 'Identificador del Registro.';
COMMENT ON TABLE REGISTRAR IS 'Contiene la informacion de los registros de los Viveros.';

CREATE TABLE TRABAJAR (
	Id_Vivero INT NOT NULL,
	Id_Empleado INT NOT NULL
);

ALTER TABLE TRABAJAR ADD CONSTRAINT TRABAJAR_PK
PRIMARY KEY (Id_Empleado, Id_Vivero);

ALTER TABLE TRABAJAR ADD CONSTRAINT TRABAJAR_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

ALTER TABLE TRABAJAR ADD CONSTRAINT TRABAJAR_FK2
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO_R1(Id_Empleado);

COMMENT ON COLUMN TRABAJAR.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN TRABAJAR.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON TABLE TRABAJAR IS 'Contiene la información de los trabajadores de los Viveros.';

CREATE TABLE TELEFONO_EMP (
	Id_Empleado INT NOT NULL,
	Id_Telefono INT NOT NULL,
	Telefono VARCHAR(12)
);

ALTER TABLE TELEFONO_EMP ADD CONSTRAINT TELEFONO_EMP_PK
PRIMARY KEY (Id_Telefono, Id_Empleado);

ALTER TABLE TELEFONO_EMP ADD CONSTRAINT TELEFONO_EMP_FK1
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO_R1(Id_Empleado);

COMMENT ON COLUMN TELEFONO_EMP.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN TELEFONO_EMP.Id_Telefono IS 'Identificador del Telefono del Empleado.';
COMMENT ON COLUMN TELEFONO_EMP.Telefono IS 'Numero de telefono de 12 digitos del Empleado.';
COMMENT ON TABLE TELEFONO_EMP IS 'Contiene los Telefonos de los Empleados.';

CREATE TABLE CORREO_EMP (
	Id_Empleado INT NOT NULL,
	Id_Correo INT NOT NULL,
	Correo VARCHAR(40)
);

ALTER TABLE CORREO_EMP ADD CONSTRAINT CORREO_EMP_PK
PRIMARY KEY (Id_Correo, Id_Empleado);

ALTER TABLE CORREO_EMP ADD CONSTRAINT CORREO_EMP_FK1
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO_R1(Id_Empleado);

COMMENT ON COLUMN CORREO_EMP.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN CORREO_EMP.Id_Correo IS 'Identificador del Correo del Empleado.';
COMMENT ON COLUMN CORREO_EMP.Correo IS 'Correo del Empleado.';
COMMENT ON TABLE CORREO_EMP IS 'Contiene los Correos de los Empleados.';

CREATE TABLE TIENE_EMP (
	Id_Empleado INT NOT NULL,
	Id_Rol INT NOT NULL
);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_PK
PRIMARY KEY (Id_Empleado, Id_Rol);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK1
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO_R1(Id_Empleado);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK2
FOREIGN KEY (Id_Rol) REFERENCES Rol(Id_Rol);

COMMENT ON COLUMN TIENE_EMP.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN TIENE_EMP.Id_Rol IS 'Identificador del rol del Empleado.';
COMMENT ON TABLE TIENE_EMP IS 'Contiene la información de los tipos de Trabajadores.';

CREATE TABLE Controlar (
	Id_Empleado INT NOT NULL,
	Id_Semillas INT NOT NULL
);

ALTER TABLE Controlar ADD CONSTRAINT Controlar_PK
PRIMARY KEY (Id_Empleado, Id_Semillas);

ALTER TABLE Controlar ADD CONSTRAINT Controlar_FK1
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO_R1(Id_Empleado);

ALTER TABLE Controlar ADD CONSTRAINT Controlar_FK2
FOREIGN KEY (Id_Semillas) REFERENCES Semillas_R1(Id_Semillas);

COMMENT ON COLUMN Controlar.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN Controlar.Id_Semillas IS 'Identificador de las Semillas.';
COMMENT ON TABLE Controlar IS 'Contiene la información de los trabajadores que controlan las Semillas.';

CREATE TABLE Germinado (
	Id_Semillas INT NOT NULL,
	Id_Semillas_Germinadas INT NOT NULL
);

ALTER TABLE Germinado ADD CONSTRAINT Germinado_PK
PRIMARY KEY (Id_Semillas, Id_Semillas_Germinadas);

ALTER TABLE Germinado ADD CONSTRAINT Germinado_FK1
FOREIGN KEY (Id_Semillas) REFERENCES Semillas_R1(Id_Semillas);

ALTER TABLE Germinado ADD CONSTRAINT Germinado_FK2
FOREIGN KEY (Id_Semillas_Germinadas) REFERENCES Semillas_Germinadas_R1(Id_Semillas_Germinadas);

COMMENT ON COLUMN Germinado.Id_Semillas IS 'Identificador de las Semillas.';
COMMENT ON COLUMN Germinado.Id_Semillas_Germinadas IS 'Identificador de las Semillas Germinadas.';
COMMENT ON TABLE Germinado IS 'Contiene la información de las Semillas Germinadas.';

CREATE TABLE TIENE_PLA (
	Id_Vivero INT NOT NULL,
	Id_Planta INT NOT NULL
);

ALTER TABLE TIENE_PLA ADD CONSTRAINT TIENE_PLA_PK
PRIMARY KEY (Id_Vivero, Id_Planta);

ALTER TABLE TIENE_PLA ADD CONSTRAINT TIENE_PLA_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

ALTER TABLE TIENE_PLA ADD CONSTRAINT TIENE_PLA_FK2
FOREIGN KEY (Id_Planta) REFERENCES PLANTAS_R1(Id_Planta);

COMMENT ON COLUMN TIENE_PLA.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN TIENE_PLA.Id_Planta IS 'Identificador de la Planta.';
COMMENT ON TABLE TIENE_PLA IS 'Contiene las Plantas que hay en un Vivero.';

CREATE TABLE AREA (
	Id_Planta INT NOT NULL,
	Id_Tipo_de_Planta INT NOT NULL
);

ALTER TABLE AREA ADD CONSTRAINT AREA_PK
PRIMARY KEY (Id_Planta, Id_Tipo_de_Planta);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK1
FOREIGN KEY (Id_Planta) REFERENCES PLANTAS_R1(Id_Planta);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK2
FOREIGN KEY (Id_Tipo_de_Planta) REFERENCES Tipo_de_Planta_R1(Id_Tipo_de_Planta);

COMMENT ON COLUMN AREA.Id_Planta IS 'Identificador de la Planta.';
COMMENT ON COLUMN AREA.Id_Tipo_de_Planta IS 'Identificador del tipo de planta.';
COMMENT ON TABLE AREA IS 'Contiene la informacion de areas de las plantas.';

CREATE TABLE VENTA_f (
	Id_Vivero INT NOT NULL,
	Id_Venta_Fisica INT NOT NULL
);

ALTER TABLE VENTA_f ADD CONSTRAINT VENTA_f_PK
PRIMARY KEY (Id_Vivero, Id_Venta_Fisica);

ALTER TABLE VENTA_f ADD CONSTRAINT VENTA_f_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

ALTER TABLE VENTA_f ADD CONSTRAINT VENTA_f_FK2
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA_R1(Id_Venta_Fisica);

COMMENT ON COLUMN VENTA_f.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN VENTA_f.Id_Venta_Fisica IS 'Identificador de la Venta Fisica.';
COMMENT ON TABLE VENTA_f IS 'Contiene la información de de los tipos de ventas fisicas.';

CREATE TABLE VENTA_e (
	Id_Vivero INT NOT NULL,
	Id_Ventas_electronicas INT NOT NULL
);

ALTER TABLE VENTA_e ADD CONSTRAINT VENTA_e_PK
PRIMARY KEY (Id_Vivero, Id_Ventas_electronicas);

ALTER TABLE VENTA_e ADD CONSTRAINT VENTA_e_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

ALTER TABLE VENTA_e ADD CONSTRAINT VENTA_e_FK2
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS_R1(Id_Ventas_electronicas);

COMMENT ON COLUMN VENTA_e.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN VENTA_e.Id_Ventas_electronicas IS 'Identificador de la Venta Electronica.';
COMMENT ON TABLE VENTA_e IS 'Contiene la información de de los tipos de ventas electronicas.';

CREATE TABLE REGISTRA_f (
	Id_Venta_Fisica INT NOT NULL,
	Id_Pago_f INT NOT NULL
);

ALTER TABLE REGISTRA_f ADD CONSTRAINT REGISTRA_f_PK
PRIMARY KEY (Id_Venta_Fisica, Id_Pago_f);

ALTER TABLE REGISTRA_f ADD CONSTRAINT REGISTRA_f_FK1
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA_R1(Id_Venta_Fisica);

ALTER TABLE REGISTRA_f ADD CONSTRAINT REGISTRA_f_FK2
FOREIGN KEY (Id_Pago_f) REFERENCES Pago_f(Id_Pago_f);

COMMENT ON COLUMN REGISTRA_f.Id_Venta_Fisica IS 'Identificador de la venta Fisica.';
COMMENT ON COLUMN REGISTRA_f.Id_Pago_f IS 'Identificador del pago fisico.';
COMMENT ON TABLE REGISTRA_f IS 'Contiene la información de los registros de pagos de ventas fisicas.';

CREATE TABLE REGISTRA_e (
	Id_Ventas_electronicas INT NOT NULL,
	Id_Pago_e INT NOT NULL
);

ALTER TABLE REGISTRA_e ADD CONSTRAINT REGISTRA_e_PK
PRIMARY KEY (Id_Ventas_electronicas, Id_Pago_e);

ALTER TABLE REGISTRA_e ADD CONSTRAINT REGISTRA_e_FK1
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS_R1(Id_Ventas_electronicas);

ALTER TABLE REGISTRA_e ADD CONSTRAINT REGISTRA_e_FK2
FOREIGN KEY (Id_Pago_e) REFERENCES Pago_e(Id_Pago_e);

COMMENT ON COLUMN REGISTRA_e.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN REGISTRA_e.Id_Pago_e IS 'Identificador del pago.';
COMMENT ON TABLE REGISTRA_e IS 'Contiene la información de los registros de pagos de ventas electronicas.';

CREATE TABLE COMPRAR_tipo_f (
	Id_Venta_Fisica INT NOT NULL,
	Id_Cliente INT NOT NULL
);

ALTER TABLE COMPRAR_tipo_f ADD CONSTRAINT COMPRAR_tipo_f_PK
PRIMARY KEY (Id_Venta_Fisica, Id_Cliente);

ALTER TABLE COMPRAR_tipo_f ADD CONSTRAINT COMPRAR_tipo_f_FK1
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA_R1(Id_Venta_Fisica);

ALTER TABLE COMPRAR_tipo_f ADD CONSTRAINT COMPRAR_tipo_f_FK2
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE_R1(Id_Cliente);

COMMENT ON COLUMN COMPRAR_tipo_f.Id_Venta_Fisica IS 'Identificador de la venta Fisica.';
COMMENT ON COLUMN COMPRAR_tipo_f.Id_Cliente IS 'Identificador del clientes.';
COMMENT ON TABLE COMPRAR_tipo_f IS 'Contiene la informacion de las ventas y compras fisicas.';

CREATE TABLE COMPRAR_tipo_e (
	Id_Ventas_electronicas INT NOT NULL,
	Id_Cliente INT NOT NULL
);

ALTER TABLE COMPRAR_tipo_e ADD CONSTRAINT COMPRAR_e_PK
PRIMARY KEY (Id_Ventas_electronicas, Id_Cliente);

ALTER TABLE COMPRAR_tipo_e ADD CONSTRAINT COMPRAR_e_FK1
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS_R1(Id_Ventas_electronicas);

ALTER TABLE COMPRAR_tipo_e ADD CONSTRAINT COMPRAR_e_FK3
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE_R1(Id_Cliente);

COMMENT ON COLUMN COMPRAR_tipo_e.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN COMPRAR_tipo_e.Id_Cliente IS 'Identificador del clientes.';
COMMENT ON TABLE COMPRAR_tipo_e IS 'Contiene la informacion de las ventas y compras electronicas.';

CREATE TABLE TELEFONO_CLI (
	Id_Cliente INT NOT NULL,
	Id_Telefono INT NOT NULL,
	Telefono VARCHAR(12)
);

ALTER TABLE TELEFONO_CLI ADD CONSTRAINT TELEFONO_CLI_PK
PRIMARY KEY (Id_Telefono, Id_Cliente);

ALTER TABLE TELEFONO_CLI ADD CONSTRAINT TELEFONO_CLI_FK1
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE_R1(Id_Cliente);

COMMENT ON COLUMN TELEFONO_CLI.Id_Cliente IS 'Identificador del cliente.';
COMMENT ON COLUMN TELEFONO_CLI.Id_Telefono IS 'Identificador del Telefono del cliente.';
COMMENT ON COLUMN TELEFONO_CLI.Telefono IS 'Numero de telefono de 12 digitos del cliente.';
COMMENT ON TABLE TELEFONO_CLI IS 'Contiene los Telefonos de los clientes.';

CREATE TABLE CORREO_CLI (
	Id_Cliente INT NOT NULL,
	Id_Correo INT NOT NULL,
	Correo VARCHAR(40)
);

ALTER TABLE CORREO_CLI ADD CONSTRAINT CORREO_CLI_PK
PRIMARY KEY (Id_Correo, Id_Cliente);

ALTER TABLE CORREO_CLI ADD CONSTRAINT CORREO_CLI_FK1
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE_R1(Id_Cliente);

COMMENT ON COLUMN CORREO_CLI.Id_Cliente IS 'Identificador del cliente.';
COMMENT ON COLUMN CORREO_CLI.Id_Correo IS 'Identificador del Correo del cliente.';
COMMENT ON COLUMN CORREO_CLI.Correo IS 'Correo del cliente.';
COMMENT ON TABLE CORREO_CLI IS 'Contiene los Correos de los clientes.';



--DML de la practica 10.
INSERT INTO vivero VALUES ('1','Vivero El SOL','11/04/2000');
INSERT INTO vivero VALUES ('2','Vivero LA LUNA ','17/08/2001');
INSERT INTO vivero VALUES ('3','Vivero ESTRELLA','01/03/2002');

INSERT INTO registro_r2 VALUES ('Haworthia', '11/04/2000', '10/04/2000', '09/04/2000', '09/04/2000');
INSERT INTO registro_r2 VALUES ('Gasteria', '12/04/2000', '08/04/2000', '15/08/2001', '15/08/2001');
INSERT INTO registro_r2 VALUES ('Astrophytum', '12/04/2000', '10/04/2000', '27/02/2002', '27/02/2002');
INSERT INTO registro_r2 VALUES ('Ariocarpus', '12/04/2000', '10/04/2000', '27/02/2002', '27/02/2002');

INSERT INTO registro_r1 VALUES ('1','Haworthia','Registro 1');
INSERT INTO registro_r1 VALUES ('2','Gasteria','Registro 2');
INSERT INTO registro_r1 VALUES ('3','Astrophytum','Registro 3');
INSERT INTO registro_r1 VALUES ('4','Ariocarpus','Registro 4');

INSERT INTO empleado_r2 VALUES ('ACDF710301HSPRZD08', '8000', '11/04/2000','36 Arbol, Alvaro Obregon, CDMX, 01160');
INSERT INTO empleado_r2 VALUES ('EAAA930609HMSSLL00', '8000', '17/08/2001','74 Tlaxcala, Alvaro Obregon, CDMX');
INSERT INTO empleado_r2 VALUES ('BORK951215MDFGNM01', '8000', '01/03/2002','192 Cerro Azul, Azcapotzalco, CDMX');

INSERT INTO empleado_r1 VALUES ('1','ACDF710301HSPRZD08','Federico', 'Acuña', 'Uribe', '04/08/1984');
INSERT INTO empleado_r1 VALUES ('2','EAAA930609HMSSLL00','Jose Alejandro', 'Bonilla', 'Leyva');
INSERT INTO empleado_r1 VALUES ('3','BORK951215MDFGNM01','Kimberly', 'Diaz', 'Rojas', '22/11/1992');

INSERT INTO Rol VALUES ('1', 'Gerente Vivero');
INSERT INTO Rol VALUES ('2', 'Cuidador de Plantas');
INSERT INTO Rol VALUES ('3', 'Cajero');
INSERT INTO Rol VALUES ('4', 'Encargado de mostrar plantas');

INSERT INTO Semillas_r2 VALUES ('F1', '07/04/1998', '150');
INSERT INTO Semillas_r2 VALUES ('F2', '14/08/1999', '150');
INSERT INTO Semillas_r2 VALUES ('F3', '23/02/1999', '300');
INSERT INTO Semillas_r2 VALUES ('F4', '02/02/1999', '150');

INSERT INTO Semillas_r1 VALUES ('1', 'F1');
INSERT INTO Semillas_r1 VALUES ('2', 'F2');
INSERT INTO Semillas_r1 VALUES ('3', 'F3');
INSERT INTO Semillas_r1 VALUES ('4', 'F4');

INSERT INTO Semillas_Germinadas_r2
VALUES ('America', '07/08/1998','05/02/1999', '07/02/1999', '07/02/1999');
INSERT INTO Semillas_Germinadas_r2
VALUES ('Africa', '14/12/1999','12/06/2000', '10/06/2000', '10/06/2000');

INSERT INTO Semillas_Germinadas_r1
VALUES ('1', 'America','300');
INSERT INTO Semillas_Germinadas_r1
VALUES ('2', 'Africa','450');

INSERT INTO Plantas_r2
VALUES ('Haworthia G','89.99', '15');
INSERT INTO Plantas_r2
VALUES ('Gasteria G','49.99', '10');
INSERT INTO Plantas_r2
VALUES ('Astrophytum G','49.99', '20');
INSERT INTO Plantas_r2
VALUES ('Ariocarpus G','29.99', '14');
INSERT INTO Plantas_r2
VALUES ('Haworthia P','179.99', '10');
INSERT INTO Plantas_r2
VALUES ('Gasteria P','119.99', '40');
INSERT INTO Plantas_r2
VALUES ('Astrophytum P','99.99', '15');
INSERT INTO Plantas_r2
VALUES ('Ariocarpus P','69.99', '20');

INSERT INTO Plantas_r1
VALUES ('1', 'Haworthia G','17/08/1998','09/03/1997');
INSERT INTO Plantas_r1
VALUES ('2', 'Gasteria G','24/12/1999','14/07/1995');
INSERT INTO Plantas_r1
VALUES ('3', 'Astrophytum G','03/07/2000','25/11/1994');
INSERT INTO Plantas_r1
VALUES ('4', 'Ariocarpus G','17/08/1998','09/03/1996');
INSERT INTO Plantas_r1
VALUES ('5', 'Haworthia P','17/08/1998','10/09/1999');
INSERT INTO Plantas_r1
VALUES ('6', 'Gasteria P','24/12/1999','20/01/1998');
INSERT INTO Plantas_r1
VALUES ('7', 'Astrophytum P','03/07/2000','25/11/1996');
INSERT INTO Plantas_r1
VALUES ('8', 'Ariocarpus P','17/08/1998','09/03/2000');

INSERT INTO Tipo_de_Planta_r2
VALUES ('Haworthia','necesitan riegos de forma regular en primavera verano, En invierno, reducir a un riego cada dos meses, el sustrato se debe secar, antes de volver a regar.'
, 'un suelo para cactus o tierra para cactus');
INSERT INTO Tipo_de_Planta_r2
VALUES ('Gasteria','necesita una ubicación muy iluminada pero mejor sin sol directo, conveniente trasplantarlas de maceta cada 3 años'
, 'El suelo deberá ser arenoso, muy bien drenado, con algo de mantillo de hojas y un 15% de tierra de jardín');
INSERT INTO Tipo_de_Planta_r2
VALUES ('Astrophytum','En invierno no regar. No precisan de abonados especiales ni de poda. Son plantas resistentes a las plagas y enfermedades si no nos excedemos con el riego'
, 'El sustrato estándar puede ser una mezcla de arena gruesa, de turba o mantillo de hojas, de tierra de jardín ligera.');
INSERT INTO Tipo_de_Planta_r2
VALUES ('Ariocarpus','necesita una exposición de pleno sol y un clima cálido y seco aunque pueden soportar ligeras heladas de hasta unos -2 ºC si el terreno está bien seco'
, 'mezcla de tierra de jardín con vermiculita y un puñado de mantillo de hojas');

INSERT INTO Tipo_de_Planta_r1
VALUES ('1', 'Haworthia', 'Haworthia');
INSERT INTO Tipo_de_Planta_r1
VALUES ('2', 'Gasteria', 'Gasteria');
INSERT INTO Tipo_de_Planta_r1
VALUES ('3', 'Astrophytum', 'Astrophytum');
INSERT INTO Tipo_de_Planta_r1
VALUES ('4', 'Ariocarpus', 'Ariocarpus');

INSERT INTO VENTA_FISICA_r3
VALUES ('PTHAG','Haworthia','89.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTHAP','Haworthia','49.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTGAG','Gasteria','49.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTGAP','Gasteria','29.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTASG','Astrophytum','179.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTASP','Astrophytum','119.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTARG','Ariocarpus','99.99');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTARP','Ariocarpus','69.99');

INSERT INTO VENTA_FISICA_r2
VALUES ('1', 'PTHAP','3','270');
INSERT INTO VENTA_FISICA_r2
VALUES ('2', 'PTGAP','2','100');
INSERT INTO VENTA_FISICA_r2
VALUES ('3', 'PTASP','1','180');

INSERT INTO VENTA_FISICA_r1
VALUES ('1','1','PTHAP','01/03/2002','1','1','1','Efectivo');
INSERT INTO VENTA_FISICA_r1
VALUES ('2','2','PTGAP','11/04/2000','2','2','2','Efectivo');
INSERT INTO VENTA_FISICA_r1
VALUES ('3','3','PTASP','17/08/2001','3','3','3','Efectivo');

INSERT INTO VENTAS_ELECTRONICAS_r2
VALUES ('1','163 San Lucas, Ciudad de México, Cd. de México','22/04/2000','Tarjeta de Debito','279.96');
INSERT INTO VENTAS_ELECTRONICAS_r2
VALUES ('2','32 Av. del Panteón, Ciudad de México, Cd. de México','05/05/2000','Tarjeta de Debito','719.94');
INSERT INTO VENTAS_ELECTRONICAS_r2
VALUES ('3','26 Ixtapan, Los Reyes Acaquilpan, Estado de México','17/05/2000','Tarjeta de Debito','149.95');

INSERT INTO VENTAS_ELECTRONICAS_r1
VALUES ('1', '1','20/04/2000','Carolina', 'Lopez', 'Herrera','5','Gaste,Gaste,Gaste,Gaste,Gaste','279.96');
INSERT INTO VENTAS_ELECTRONICAS_r1
VALUES ('2', '2','01/05/2000','Andrea Daniela', 'Romero', 'Diaz','6','Astroph,Astroph,Astroph,Astroph,Astroph,Astroph','719.94');
INSERT INTO VENTAS_ELECTRONICAS_r1
VALUES ('3', '3','04/05/2000','Ricardo', 'Juarez', 'Castañeda','4','Arioca,Arioca,Arioca,Arioca','149.95');

INSERT INTO CLIENTE_r2
VALUES ('A1','20/01/1998', '24 C. Saltillo, Nezahualcóyotl, Estado de Mexico');
INSERT INTO CLIENTE_r2
VALUES ('A2','06/04/1975', '20 Aguascalientes, Ecatepec de Morelos, Estado de México');
INSERT INTO CLIENTE_r2
VALUES ('A3','25/05/2000', '75 Serafín Olarte, Ciudad de México, Cd. de México');
INSERT INTO CLIENTE_r2
VALUES ('A4','18/03/1984', '163 San Lucas, Ciudad de México, Cd. de México');
INSERT INTO CLIENTE_r2
VALUES ('A5','09/07/1992', '32 Av. del Panteón, Ciudad de México, Cd. de México');
INSERT INTO CLIENTE_r2
VALUES ('A6','01/10/1973', '26 Ixtapan, Los Reyes Acaquilpan, Estado de México');

INSERT INTO CLIENTE_r1
VALUES ('1','A1','Maura', 'Marin', 'Lopez');
INSERT INTO CLIENTE_r1
VALUES ('2','A2','Guillermo Daniel', 'Ortega', 'Ortiz');
INSERT INTO CLIENTE_r1
VALUES ('3','A3','Alberto', 'Gonzalez', 'Garcia');
INSERT INTO CLIENTE_r1
VALUES ('4','A4','Carolina', 'Lopez', 'Herrera');
INSERT INTO CLIENTE_r1
VALUES ('5','A5','Andrea Daniela', 'Romero', 'Diaz');
INSERT INTO CLIENTE_r1
VALUES ('6','A6','Ricardo', 'Juarez', 'Castañeda');

INSERT INTO Pago_f VALUES ('1', 'Efectivo');
INSERT INTO Pago_f VALUES ('2', 'Efectivo');
INSERT INTO Pago_f VALUES ('3', 'Efectivo');

INSERT INTO Pago_e VALUES ('1', 'Tarjeta de Debito');
INSERT INTO Pago_e VALUES ('2', 'Tarjeta de Debito');
INSERT INTO Pago_e VALUES ('3', 'Tarjeta de Debito');

INSERT INTO TELEFONO_VIV VALUES ('1', '1', '525534456710');
INSERT INTO TELEFONO_VIV VALUES ('2', '2', '525554769811');
INSERT INTO TELEFONO_VIV VALUES ('3', '3', '525536487990');

INSERT INTO DIRECCION_VIV VALUES ('1', '1', '20 Cam. Real, Xochimilco, Cd. de México');
INSERT INTO DIRECCION_VIV VALUES ('2', '2', '128 Pachuca, Chapultepec, Cd. de México');
INSERT INTO DIRECCION_VIV VALUES ('3', '3', '82 C. de Venustiano Carranza, Venustiano Carranza, Cd. de México');

INSERT INTO REGISTRAR VALUES ('1', '1');
INSERT INTO REGISTRAR VALUES ('2', '2');
INSERT INTO REGISTRAR VALUES ('3', '3');
INSERT INTO REGISTRAR VALUES ('3', '4');

INSERT INTO TRABAJAR VALUES ('1', '1');
INSERT INTO TRABAJAR VALUES ('2', '2');
INSERT INTO TRABAJAR VALUES ('3', '3');

INSERT INTO TELEFONO_EMP VALUES ('1', '1', '525532659811');
INSERT INTO TELEFONO_EMP VALUES ('2', '2', '525538323611');
INSERT INTO TELEFONO_EMP VALUES ('3', '3', '525512328411');

INSERT INTO CORREO_EMP VALUES ('1', '1', 'FA_Uribe@gmail.com');
INSERT INTO CORREO_EMP VALUES ('2', '2', 'JM_Bonilla@gmail.com');
INSERT INTO CORREO_EMP VALUES ('3', '3', 'KD_Rojas@gmail.com');

INSERT INTO TIENE_EMP VALUES ('1', '1');
INSERT INTO TIENE_EMP VALUES ('2', '2');
INSERT INTO TIENE_EMP VALUES ('3', '3');

INSERT INTO Controlar VALUES ('1', '1');
INSERT INTO Controlar VALUES ('2', '2');
INSERT INTO Controlar VALUES ('3', '3');

INSERT INTO Germinado VALUES ('1', '1');
INSERT INTO Germinado VALUES ('2', '1');
INSERT INTO Germinado VALUES ('3', '2');
INSERT INTO Germinado VALUES ('4', '2');

INSERT INTO TIENE_PLA VALUES ('1', '1');
INSERT INTO TIENE_PLA VALUES ('2', '2');
INSERT INTO TIENE_PLA VALUES ('3', '3');
INSERT INTO TIENE_PLA VALUES ('3', '4');

INSERT INTO VENTA_f VALUES ('1', '1');
INSERT INTO VENTA_f VALUES ('2', '2');
INSERT INTO VENTA_f VALUES ('3', '3');
INSERT INTO VENTA_e VALUES ('1', '1');
INSERT INTO VENTA_e VALUES ('2', '2');
INSERT INTO VENTA_e VALUES ('3', '3');

INSERT INTO REGISTRA_f VALUES ('1', '1');
INSERT INTO REGISTRA_f VALUES ('2', '2');
INSERT INTO REGISTRA_f VALUES ('3', '3');
INSERT INTO REGISTRA_e VALUES ('1', '1');
INSERT INTO REGISTRA_e VALUES ('2', '2');
INSERT INTO REGISTRA_e VALUES ('3', '3');

INSERT INTO COMPRAR_tipo_f VALUES ('1', '1');
INSERT INTO COMPRAR_tipo_f VALUES ('2', '2');
INSERT INTO COMPRAR_tipo_f VALUES ('3', '3');
INSERT INTO COMPRAR_tipo_e VALUES ('1', '4');
INSERT INTO COMPRAR_tipo_e VALUES ('2', '5');
INSERT INTO COMPRAR_tipo_e VALUES ('3', '6');

INSERT INTO TELEFONO_CLI VALUES ('1', '1', '525513475863');
INSERT INTO TELEFONO_CLI VALUES ('2', '2', '525541628473');
INSERT INTO TELEFONO_CLI VALUES ('3', '3', '525519381940');
INSERT INTO TELEFONO_CLI VALUES ('4', '4', '525545275863');
INSERT INTO TELEFONO_CLI VALUES ('5', '5', '525544528473');
INSERT INTO TELEFONO_CLI VALUES ('6', '6', '525519345240');

INSERT INTO CORREO_CLI VALUES ('1', '1', 'MM_Lopez@gmail.com');
INSERT INTO CORREO_CLI VALUES ('2', '2', 'GD_Ortiz@gmail.com');
INSERT INTO CORREO_CLI VALUES ('3', '3', 'AG_Garcia@gmail.com');
INSERT INTO CORREO_CLI VALUES ('4', '4', 'LH_Lopez@gmail.com');
INSERT INTO CORREO_CLI VALUES ('5', '5', 'RD_Romero@gmail.com');
INSERT INTO CORREO_CLI VALUES ('6', '6', 'JC_Juarez@gmail.com');

INSERT INTO area VALUES ('1', '1');
INSERT INTO area VALUES ('5', '1');
INSERT INTO area VALUES ('2', '2');
INSERT INTO area VALUES ('6', '2');
INSERT INTO area VALUES ('3', '3');
INSERT INTO area VALUES ('7', '3');
INSERT INTO area VALUES ('4', '4');
INSERT INTO area VALUES ('8', '4');
