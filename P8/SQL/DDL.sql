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


CREATE TABLE REGISTRO (
	Id_Registro INT NOT NULL,
	Nombre VARCHAR(20) NOT NULL,
	Genero VARCHAR(20) NOT NULL,
	Fecha_de_adquisicion DATE,
	Ultimo_riego DATE,
	Ultimo_fertilizante DATE,
	Ultima_fumigacion DATE
);

ALTER TABLE REGISTRO ADD CONSTRAINT REGISTRO_PK
PRIMARY KEY (Id_Registro);

COMMENT ON COLUMN REGISTRO.Id_Registro IS 'Identificador del Registro.';
COMMENT ON COLUMN REGISTRO.Nombre IS 'Nombre del Registro.';
COMMENT ON COLUMN REGISTRO.Genero IS 'Genero de la planta productora.';
COMMENT ON COLUMN REGISTRO.Fecha_de_adquisicion IS 'Fecha de adquisicion.';
COMMENT ON COLUMN REGISTRO.Ultimo_riego IS 'Fecha del ultimo riego.';
COMMENT ON COLUMN REGISTRO.Ultimo_fertilizante IS 'Fecha del ultimo fertilizante.';
COMMENT ON COLUMN REGISTRO.Ultima_fumigacion IS 'Fecha de la ultima fumigacion.';
COMMENT ON TABLE REGISTRO IS 'Contiene la información de los Registros de ejemplares productoras.';


CREATE TABLE EMPLEADO (
	Id_Empleado INT NOT NULL,
	Nombre VARCHAR(20) NOT NULL,
	Apellido_Paterno VARCHAR(20) NOT NULL,
	Apellido_Materno VARCHAR(20) NOT NULL,
	Fecha_de_nacimiento DATE,
	Direccion VARCHAR(40),
	Salario REAL,
	Fecha_Inicio_servicio DATE
);

ALTER TABLE EMPLEADO ADD CONSTRAINT EMPLEADO_PK
PRIMARY KEY (Id_Empleado);

COMMENT ON COLUMN EMPLEADO.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN EMPLEADO.Nombre IS 'Nombre del Empleado.';
COMMENT ON COLUMN EMPLEADO.Apellido_Paterno IS 'Apellido Paterno del Empleado.';
COMMENT ON COLUMN EMPLEADO.Apellido_Materno IS 'Apellido Materno del Empleado.';
COMMENT ON COLUMN EMPLEADO.Fecha_de_nacimiento IS 'Fecha de nacimiento del Empleado.';
COMMENT ON COLUMN EMPLEADO.Direccion IS 'Direccion del Empleado.';
COMMENT ON COLUMN EMPLEADO.Salario IS 'Salario del Empleado.';
COMMENT ON COLUMN EMPLEADO.Fecha_Inicio_servicio IS 'Fecha en la que inicio a trabajar el empleado';
COMMENT ON TABLE EMPLEADO IS 'Contiene la información de los Empleados.';


CREATE TABLE Rol (
	Id_Rol INT NOT NULL,
	Tipo_de_Rol VARCHAR(50)
);

ALTER TABLE Rol ADD CONSTRAINT Rol_PK
PRIMARY KEY (Id_Rol);

COMMENT ON COLUMN Rol.Id_Rol IS 'Identificador del Rol del Empleado.';
COMMENT ON COLUMN Rol.Tipo_de_Rol IS 'Nombre del rol del Empleado.';
COMMENT ON TABLE Rol IS 'Contiene el nombre del rol de los Empleados.';


CREATE TABLE Semillas (
	Id_Semillas INT NOT NULL,
	Planta_de_cruce VARCHAR(20),
	Fecha_de_polinizacion DATE,
	Cantidad_de_semillas INT
);

ALTER TABLE Semillas ADD CONSTRAINT Semillas_PK
PRIMARY KEY (Id_Semillas);

COMMENT ON COLUMN Semillas.Id_Semillas IS 'Identificador de las Semillas.';
COMMENT ON COLUMN Semillas.Planta_de_cruce IS 'Panta de cruce.';
COMMENT ON COLUMN Semillas.Fecha_de_polinizacion IS 'Fecha de polinizacion de las Semillas.';
COMMENT ON COLUMN Semillas.Cantidad_de_semillas IS 'Cantidad de Semillas.';
COMMENT ON TABLE Semillas IS 'Contiene la información de las Semillas de los Viveros.';

CREATE TABLE Semillas_Germinadas (
	Id_Semillas_Germinadas INT NOT NULL,
	Origen VARCHAR(30),
	Fecha_de_siembra DATE,
	Semillas_germinadas INT,
	Ultimo_riego DATE,
	Ultimo_fertilizante DATE,
	Ultima_fumigacion DATE
);

ALTER TABLE Semillas_Germinadas ADD CONSTRAINT Semillas_Germinadas_PK
PRIMARY KEY (Id_Semillas_Germinadas);

COMMENT ON COLUMN Semillas_Germinadas.Id_Semillas_Germinadas IS 'Identificador de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas.Origen IS 'Origen de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas.Fecha_de_siembra IS 'Fehca de siembra de las Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas.Semillas_germinadas IS 'Numero de Semillas Germinadas.';
COMMENT ON COLUMN Semillas_Germinadas.Ultimo_riego IS 'Fecha del ultimo riego.';
COMMENT ON COLUMN Semillas_Germinadas.Ultimo_fertilizante IS 'Fecha del ultimo fertilizante.';
COMMENT ON COLUMN Semillas_Germinadas.Ultima_fumigacion IS 'Fecha de la ultima fumigacion.';
COMMENT ON TABLE Semillas_Germinadas IS 'Contiene la información de las semillas germinadas.';


CREATE TABLE PLANTAS (
	Id_Planta INT NOT NULL,
	Nombre VARCHAR(20),
	Fechas_de_riego DATE,
	Fecha_de_germinacion DATE,
	Precio REAL,
	Numero_de_plantas INT	
);

ALTER TABLE PLANTAS ADD CONSTRAINT PLANTAS_PK
PRIMARY KEY (Id_Planta);

COMMENT ON COLUMN PLANTAS.Id_Planta IS 'Identificador de la Planta.';
COMMENT ON COLUMN PLANTAS.Nombre IS 'Nombre de la Planta.';
COMMENT ON COLUMN PLANTAS.Fechas_de_riego IS 'Fechas de riego de la Planta.';
COMMENT ON COLUMN PLANTAS.Fecha_de_germinacion IS 'Fecha de germinacion de la Planta.';
COMMENT ON COLUMN PLANTAS.Precio IS 'Precio de la Planta.';
COMMENT ON COLUMN PLANTAS.Numero_de_plantas IS 'Numero de plantas.';
COMMENT ON TABLE PLANTAS IS 'Contiene la información de las Plantas.';


CREATE TABLE Tipo_de_Planta (
	Id_Tipo_de_Planta INT NOT NULL,
	Nombre_del_tipo_de_planta VARCHAR(20),
	Genero VARCHAR(20),
	Cuidados_basicos VARCHAR(70),
	Tipo_de_sustrato VARCHAR(40)
);

ALTER TABLE Tipo_de_Planta ADD CONSTRAINT Tipo_de_Planta_PK
PRIMARY KEY (Id_Tipo_de_Planta);

COMMENT ON COLUMN Tipo_de_Planta.Id_Tipo_de_Planta IS 'Identificador de la planta.';
COMMENT ON COLUMN Tipo_de_Planta.Nombre_del_tipo_de_planta IS 'Nombre del tipo de la planta.';
COMMENT ON COLUMN Tipo_de_Planta.Genero IS 'Genero de la planta.';
COMMENT ON COLUMN Tipo_de_Planta.Cuidados_basicos IS 'Cuidados basicos de la planta.';
COMMENT ON COLUMN Tipo_de_Planta.Tipo_de_sustrato IS 'Tipo de sustrato de la planta.';
COMMENT ON TABLE Tipo_de_Planta IS 'Contiene la información de los tipos de plantas.';


CREATE TABLE VENTA_FISICA (
	Id_Venta_Fisica INT NOT NULL,
	Fecha_Venta_f DATE,
	Precio_productos REAL,
	Total_productos INT,
	Productos_adquiridos VARCHAR(70),
	Id_Empleado_que_ayudo_a_cliente INT NOT NULL,
	Numero_de_productos_adquiridos INT,
	Empleado_que_efectuo_el_cobro VARCHAR(40),
	Forma_de_pago VARCHAR(20),
	Vivero_donde_se_adquirio INT
);

ALTER TABLE VENTA_FISICA ADD CONSTRAINT VENTA_FISICA_PK
PRIMARY KEY (Id_Venta_Fisica);

COMMENT ON COLUMN VENTA_FISICA.Id_Venta_Fisica IS 'Identificador de la Venta Fisica.';
COMMENT ON COLUMN VENTA_FISICA.Fecha_Venta_f IS 'Fecha de la venta fisica.';
COMMENT ON COLUMN VENTA_FISICA.Precio_productos IS 'Precio de los Productos.';
COMMENT ON COLUMN VENTA_FISICA.Total_productos IS 'Total de Productos.';
COMMENT ON COLUMN VENTA_FISICA.Productos_adquiridos IS 'Numero de Productos adquiridos.';
COMMENT ON COLUMN VENTA_FISICA.Id_Empleado_que_ayudo_a_cliente IS 'Id del Empleado que ayudo a un cliente.';
COMMENT ON COLUMN VENTA_FISICA.Numero_de_productos_adquiridos IS 'Numero de Productos adquiridos.';
COMMENT ON COLUMN VENTA_FISICA.Empleado_que_efectuo_el_cobro IS 'Empleado que efectuo el cobro.';
COMMENT ON COLUMN VENTA_FISICA.Forma_de_pago IS 'La forma de pago del cliente.';
COMMENT ON COLUMN VENTA_FISICA.Vivero_donde_se_adquirio IS 'Vivero donde se adquirieron los productos.';
COMMENT ON TABLE VENTA_FISICA IS 'Contiene la información de las Ventas Fisicas de los Viveros.';

CREATE TABLE VENTAS_ELECTRONICAS (
	Id_Ventas_electronicas INT NOT NULL,
	Fecha_Venta_e DATE,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20),
	Direccion_de_envio VARCHAR(100),
	Fecha_de_pedido DATE,
	Numero_de_productos INT,
	Desglose_de_productos_adquiridos VARCHAR(60),
	Precio_a_pagar REAL,
	Total REAL,
	Forma_de_pago VARCHAR(20),
	Numero_de_seguimiento INT
);

ALTER TABLE VENTAS_ELECTRONICAS ADD CONSTRAINT VENTAS_ELECTRONICAS_PK
PRIMARY KEY (Id_Ventas_electronicas);

COMMENT ON COLUMN VENTAS_ELECTRONICAS.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Fecha_Venta_e IS 'Fecha de la venta electronica.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Apellido_Paterno IS 'Apellido Paterno del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Apellido_Materno IS 'Apellido Materno del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Direccion_de_envio IS 'Direccion del cliente.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Fecha_de_pedido IS 'Fecha de pedido.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Numero_de_productos IS 'Numero de productos adquiridos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Desglose_de_productos_adquiridos IS 'Desglose de los productos adquiridos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Precio_a_pagar IS 'Cantidad a pagar.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Total IS 'Total de productos.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Forma_de_pago IS 'Forma de pago.';
COMMENT ON COLUMN VENTAS_ELECTRONICAS.Numero_de_seguimiento IS 'Numero de seguimiento de la venta electronica.';
COMMENT ON TABLE VENTAS_ELECTRONICAS IS 'Contiene la información de las ventas electronicas.';


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


CREATE TABLE CLIENTE (
	Id_Cliente INT NOT NULL,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20),
	Fecha_de_nacimiento DATE,
	Direccion VARCHAR(100)
);

ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_PK
PRIMARY KEY (Id_Cliente);

COMMENT ON COLUMN CLIENTE.Id_Cliente IS 'Identificador del cliente.';
COMMENT ON COLUMN CLIENTE.Nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN CLIENTE.Apellido_Paterno IS 'Apellido Paterno del cliente.';
COMMENT ON COLUMN CLIENTE.Apellido_Materno IS 'Apellido Materno del cliente.';
COMMENT ON COLUMN CLIENTE.Fecha_de_nacimiento IS 'Fehca de nacimiento del cliente.';
COMMENT ON COLUMN CLIENTE.Direccion IS 'Direccion del cliente.';
COMMENT ON TABLE CLIENTE IS 'Contiene la información de los clientes.';



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
FOREIGN KEY (Id_Registro) REFERENCES REGISTRO(Id_Registro);

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
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

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
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

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
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

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
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

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
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

ALTER TABLE Controlar ADD CONSTRAINT Controlar_FK2
FOREIGN KEY (Id_Semillas) REFERENCES Semillas(Id_Semillas);


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
FOREIGN KEY (Id_Semillas) REFERENCES Semillas(Id_Semillas);

ALTER TABLE Germinado ADD CONSTRAINT Germinado_FK2
FOREIGN KEY (Id_Semillas_Germinadas) REFERENCES Semillas_Germinadas(Id_Semillas_Germinadas);

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
FOREIGN KEY (Id_Planta) REFERENCES PLANTAS(Id_Planta);


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
FOREIGN KEY (Id_Planta) REFERENCES PLANTAS(Id_Planta);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK2
FOREIGN KEY (Id_Tipo_de_Planta) REFERENCES Tipo_de_Planta(Id_Tipo_de_Planta);


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
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);


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
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);


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
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);

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
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);

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
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);

ALTER TABLE COMPRAR_tipo_f ADD CONSTRAINT COMPRAR_tipo_f_FK2
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE(Id_Cliente);

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
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);

ALTER TABLE COMPRAR_tipo_e ADD CONSTRAINT COMPRAR_e_FK3
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE(Id_Cliente);

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
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE(Id_Cliente);

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
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE(Id_Cliente);

COMMENT ON COLUMN CORREO_CLI.Id_Cliente IS 'Identificador del cliente.';
COMMENT ON COLUMN CORREO_CLI.Id_Correo IS 'Identificador del Correo del cliente.';
COMMENT ON COLUMN CORREO_CLI.Correo IS 'Correo del cliente.';
COMMENT ON TABLE CORREO_CLI IS 'Contiene los Correos de los clientes.';


