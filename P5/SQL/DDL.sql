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
	Genero VARCHAR(10) NOT NULL,
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
	Salario REAL
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
COMMENT ON TABLE EMPLEADO IS 'Contiene la información de los Empleados.';


CREATE TABLE Gerente_Vivero (
	Id_Gerente_Vivero INT NOT NULL
);

ALTER TABLE Gerente_Vivero ADD CONSTRAINT Gerente_Vivero_PK
PRIMARY KEY (Id_Gerente_Vivero);

COMMENT ON COLUMN Gerente_Vivero.Id_Gerente_Vivero IS 'Identificador del Gerente del Vivero.';
COMMENT ON TABLE Gerente_Vivero IS 'Contiene la información de los Trabajadores que son Gerentes.';

CREATE TABLE Cuidador_de_plantas (
	Id_Cuidador_de_plantas INT NOT NULL
);

ALTER TABLE Cuidador_de_plantas ADD CONSTRAINT Cuidador_de_plantas_PK
PRIMARY KEY (Id_Cuidador_de_plantas);

COMMENT ON COLUMN Cuidador_de_plantas.Id_Cuidador_de_plantas IS 'Identificador del Cuidador de plantas del Vivero.';
COMMENT ON TABLE Cuidador_de_plantas IS 'Contiene la información de los Trabajadores que son Cuidadores.';

CREATE TABLE Encargado_de_mostrar_plantas (
	Id_Encargado_de_mostrar_plantas INT NOT NULL
);

ALTER TABLE Encargado_de_mostrar_plantas ADD CONSTRAINT Encargado_de_mostrar_plantas_PK
PRIMARY KEY (Id_Encargado_de_mostrar_plantas);

COMMENT ON COLUMN Encargado_de_mostrar_plantas.Id_Encargado_de_mostrar_plantas IS 'Identificador del Encargado de mostrar las plantas en el Vivero.';
COMMENT ON TABLE Encargado_de_mostrar_plantas IS 'Contiene la información de los Trabajadores que son Encargados.';

CREATE TABLE Cajero (
	Id_Cajero INT NOT NULL
);

ALTER TABLE Cajero ADD CONSTRAINT Cajero_PK
PRIMARY KEY (Id_Cajero);

COMMENT ON COLUMN Cajero.Id_Cajero IS 'Identificador del Cajero del Vivero.';
COMMENT ON TABLE Cajero IS 'Contiene la información de los Trabajadores que son Cajeros.';


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

CREATE TABLE PLANTAS_AFRICANAS (
	Id_Plantas_africanas INT NOT NULL,
	Genero VARCHAR(20),
	Cuidados_basicos VARCHAR(70),
	Tipo_de_sustrato VARCHAR(10)
);

ALTER TABLE PLANTAS_AFRICANAS ADD CONSTRAINT PLANTAS_AFRICANAS_PK
PRIMARY KEY (Id_Plantas_africanas);

COMMENT ON COLUMN PLANTAS_AFRICANAS.Id_Plantas_africanas IS 'Identificador de la Planta africana.';
COMMENT ON COLUMN PLANTAS_AFRICANAS.Genero IS 'Nombre de la Planta africana.';
COMMENT ON COLUMN PLANTAS_AFRICANAS.Cuidados_basicos IS 'Cuidados basicos de la planta africana.';
COMMENT ON COLUMN PLANTAS_AFRICANAS.Tipo_de_sustrato IS 'Tipo de sustrato de la Planta africana.';
COMMENT ON TABLE PLANTAS_AFRICANAS IS 'Contiene la información de las Plantas africanas.';

CREATE TABLE CACTUS (
	Id_Cactus INT NOT NULL,
	Genero VARCHAR(20),
	Cuidados_basicos VARCHAR(70),
	Tipo_de_sustrato VARCHAR(10)
);

ALTER TABLE CACTUS ADD CONSTRAINT CACTUS_PK
PRIMARY KEY (Id_Cactus);

COMMENT ON COLUMN CACTUS.Id_Cactus IS 'Identificador del cactus.';
COMMENT ON COLUMN CACTUS.Genero IS 'Nombre del cactus.';
COMMENT ON COLUMN CACTUS.Cuidados_basicos IS 'Cuidados basicos del cactus.';
COMMENT ON COLUMN CACTUS.Tipo_de_sustrato IS 'Tipo de sustrato del cactus.';
COMMENT ON TABLE CACTUS IS 'Contiene la información de las plantas que son del Area cactus.';


CREATE TABLE VENTA_FISICA (
	Id_Venta_Fisica INT NOT NULL,
	Precio_productos REAL,
	Total_productos INT,
	Productos_adquiridos INT,
	Empleado_que_ayudo_a_cliente VARCHAR(40),
	Numero_de_productos_adquiridos INT,
	Empleado_que_efectuo_el_cobro VARCHAR(40),
	Vivero_donde_se_adquirio INT
);

ALTER TABLE VENTA_FISICA ADD CONSTRAINT VENTA_FISICA_PK
PRIMARY KEY (Id_Venta_Fisica);

COMMENT ON COLUMN VENTA_FISICA.Id_Venta_Fisica IS 'Identificador de la Venta Fisica.';
COMMENT ON COLUMN VENTA_FISICA.Precio_productos IS 'Precio de los Productos.';
COMMENT ON COLUMN VENTA_FISICA.Total_productos IS 'Total de Productos.';
COMMENT ON COLUMN VENTA_FISICA.Productos_adquiridos IS 'Numero de Productos adquiridos.';
COMMENT ON COLUMN VENTA_FISICA.Empleado_que_ayudo_a_cliente IS 'Nombre del Empleado que ayudo a un cliente.';
COMMENT ON COLUMN VENTA_FISICA.Numero_de_productos_adquiridos IS 'Numero de Productos adquiridos.';
COMMENT ON COLUMN VENTA_FISICA.Empleado_que_efectuo_el_cobro IS 'Empleado que efectuo el cobro.';
COMMENT ON COLUMN VENTA_FISICA.Vivero_donde_se_adquirio IS 'Vivero donde se adquirieron los productos.';
COMMENT ON TABLE VENTA_FISICA IS 'Contiene la información de las Ventas Fisicas de los Viveros.';

CREATE TABLE VENTAS_ELECTRONICAS (
	Id_Ventas_electronicas INT NOT NULL,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20),
	Direccion_de_envio VARCHAR(100),
	Fecha_de_pedido DATE,
	Numero_de_productos INT,
	Desglose_de_productos_adquiridos VARCHAR(60),
	Precio_a_pagar REAL,
	Total INT,
	Forma_de_pago VARCHAR(20),
	Numero_de_seguimiento INT
);

ALTER TABLE VENTAS_ELECTRONICAS ADD CONSTRAINT VENTAS_ELECTRONICAS_PK
PRIMARY KEY (Id_Ventas_electronicas);

COMMENT ON COLUMN VENTAS_ELECTRONICAS.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
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


CREATE TABLE PAGO (
	Id_Pago INT NOT NULL
);

ALTER TABLE PAGO ADD CONSTRAINT PAGO_PK
PRIMARY KEY (Id_Pago);

COMMENT ON COLUMN PAGO.Id_Pago IS 'Identificador del pago.';
COMMENT ON TABLE PAGO IS 'Contiene la información de los pagos.';

CREATE TABLE DEBITO (
	Id_Debito INT NOT NULL
);

ALTER TABLE DEBITO ADD CONSTRAINT DEBITO_PK
PRIMARY KEY (Id_Debito);

COMMENT ON COLUMN DEBITO.Id_Debito IS 'Identificador de debito.';
COMMENT ON TABLE DEBITO IS 'Contiene la información de los pagos de tipo debito.';

CREATE TABLE EFECTIVO (
	Id_Efectivo INT NOT NULL
);

ALTER TABLE EFECTIVO ADD CONSTRAINT EFECTIVO_PK
PRIMARY KEY (Id_Efectivo);

COMMENT ON COLUMN EFECTIVO.Id_Efectivo IS 'Identificador de efectivo.';
COMMENT ON TABLE EFECTIVO IS 'Contiene la información de los pagos en efectivo.';

CREATE TABLE TARJETA_DE_CREDITO (
	Id_Tarjeta_de_credito INT NOT NULL
);

ALTER TABLE TARJETA_DE_CREDITO ADD CONSTRAINT TARJETA_DE_CREDITO_PK
PRIMARY KEY (Id_Tarjeta_de_credito);

COMMENT ON COLUMN TARJETA_DE_CREDITO.Id_Tarjeta_de_credito IS 'Identificador de la tarjeta de credito.';
COMMENT ON TABLE TARJETA_DE_CREDITO IS 'Contiene la información de los pagos con tarjeta de credito.';


CREATE TABLE CLIENTE (
	Id_Cliente INT NOT NULL,
	Nombre VARCHAR(20),
	Apellido_Paterno VARCHAR(20),
	Apellido_Materno VARCHAR(20),
	Fecha_de_nacimiento DATE,
	Direccion VARCHAR(40)
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
	Direccion VARCHAR(40) NOT NULL
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
	Id_Gerente_Vivero INT NOT NULL,
	Id_Cuidador_de_plantas INT NOT NULL,
	Id_Encargado_de_mostrar_plantas INT NOT NULL,
	Id_Cajero INT NOT NULL
);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_PK
PRIMARY KEY (Id_Empleado, Id_Gerente_Vivero, Id_Cuidador_de_plantas, Id_Encargado_de_mostrar_plantas, Id_Cajero);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK1
FOREIGN KEY (Id_Empleado) REFERENCES EMPLEADO(Id_Empleado);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK2
FOREIGN KEY (Id_Gerente_Vivero) REFERENCES Gerente_Vivero(Id_Gerente_Vivero);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK3
FOREIGN KEY (Id_Cuidador_de_plantas) REFERENCES Cuidador_de_plantas(Id_Cuidador_de_plantas);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK4
FOREIGN KEY (Id_Encargado_de_mostrar_plantas) REFERENCES Encargado_de_mostrar_plantas(Id_Encargado_de_mostrar_plantas);

ALTER TABLE TIENE_EMP ADD CONSTRAINT TIENE_EMP_FK5 
FOREIGN KEY (Id_Cajero) REFERENCES Cajero(Id_Cajero);

COMMENT ON COLUMN TIENE_EMP.Id_Empleado IS 'Identificador del Empleado.';
COMMENT ON COLUMN TIENE_EMP.Id_Gerente_Vivero IS 'Identificador del Gerente del Vivero.';
COMMENT ON COLUMN TIENE_EMP.Id_Cuidador_de_plantas IS 'Identificador del Cuidador de plantas del Vivero.';
COMMENT ON COLUMN TIENE_EMP.Id_Encargado_de_mostrar_plantas IS 'Identificador del Encargado de mostrar las plantas en el Vivero.';
COMMENT ON COLUMN TIENE_EMP.Id_Cajero IS 'Identificador del Cajero del Vivero.';
COMMENT ON TABLE TIENE_EMP IS 'Contiene la información de los tipo de Trabajadores.';




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
COMMENT ON TABLE TIENE_PLA IS 'Contiene las Plantas que hay en el Vivero.';



CREATE TABLE AREA (
	Id_Planta INT NOT NULL,
	Id_Plantas_africanas INT NOT NULL,
	Id_Cactus Int NOT NULL
);

ALTER TABLE AREA ADD CONSTRAINT AREA_PK
PRIMARY KEY (Id_Planta, Id_Plantas_africanas, Id_Cactus);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK1
FOREIGN KEY (Id_Planta) REFERENCES PLANTAS(Id_Planta);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK2
FOREIGN KEY (Id_Plantas_africanas) REFERENCES PLANTAS_AFRICANAS(Id_Plantas_africanas);

ALTER TABLE AREA ADD CONSTRAINT AREA_FK3
FOREIGN KEY (Id_Cactus) REFERENCES CACTUS(Id_Cactus);

COMMENT ON COLUMN AREA.Id_Planta IS 'Identificador de la Planta.';
COMMENT ON COLUMN AREA.Id_Plantas_africanas IS 'Identificador de la planta africana.';
COMMENT ON COLUMN AREA.Id_Cactus IS 'Identificador del cactus.';
COMMENT ON TABLE AREA IS 'Contiene la información del Area de las Plantas.';



CREATE TABLE VENTA (
	Id_Vivero INT NOT NULL,
	Id_Venta_Fisica INT NOT NULL,
	Id_Ventas_electronicas INT NOT NULL
);

ALTER TABLE VENTA ADD CONSTRAINT VENTA_PK
PRIMARY KEY (Id_Vivero, Id_Venta_Fisica, Id_Ventas_electronicas);

ALTER TABLE VENTA ADD CONSTRAINT VENTA_FK1
FOREIGN KEY (Id_Vivero) REFERENCES VIVERO(Id_Vivero);

ALTER TABLE VENTA ADD CONSTRAINT VENTA_FK2
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);

ALTER TABLE VENTA ADD CONSTRAINT VENTA_FK3
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);


COMMENT ON COLUMN VENTA.Id_Vivero IS 'Identificador del Vivero.';
COMMENT ON COLUMN VENTA.Id_Venta_Fisica IS 'Identificador de la Venta Fisica.';
COMMENT ON COLUMN VENTA.Id_Ventas_electronicas IS 'Identificador de la Venta Electronica.';
COMMENT ON TABLE VENTA IS 'Contiene la información de de los tipos de ventas de los Viveros.';




CREATE TABLE REGISTRA (
	Id_Venta_Fisica INT NOT NULL,
	Id_Ventas_electronicas INT NOT NULL,
	Id_Pago INT NOT NULL
);

ALTER TABLE REGISTRA ADD CONSTRAINT REGISTRA_PK
PRIMARY KEY (Id_Venta_Fisica, Id_Ventas_electronicas, Id_Pago);

ALTER TABLE REGISTRA ADD CONSTRAINT REGISTRA_FK1
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);

ALTER TABLE REGISTRA ADD CONSTRAINT REGISTRA_FK2
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);

ALTER TABLE REGISTRA ADD CONSTRAINT REGISTRA_FK3
FOREIGN KEY (Id_Pago) REFERENCES PAGO(Id_Pago);

COMMENT ON COLUMN REGISTRA.Id_Venta_Fisica IS 'Identificador de la venta Fisica.';
COMMENT ON COLUMN REGISTRA.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN REGISTRA.Id_Pago IS 'Identificador del pago.';
COMMENT ON TABLE REGISTRA IS 'Contiene la información de los registros de pagos de ventas.';



CREATE TABLE PAGAR (
	Id_Pago INT NOT NULL,
	Id_Debito INT NOT NULL,
	Id_Efectivo INT NOT NULL,
	Id_Tarjeta_de_credito INT NOT NULL
);

ALTER TABLE PAGAR ADD CONSTRAINT PAGAR_PK
PRIMARY KEY (Id_Pago, Id_Debito, Id_Efectivo, Id_Tarjeta_de_credito);

ALTER TABLE PAGAR ADD CONSTRAINT PAGAR_FK1
FOREIGN KEY (Id_Pago) REFERENCES PAGO(Id_Pago);

ALTER TABLE PAGAR ADD CONSTRAINT PAGAR_FK2
FOREIGN KEY (Id_Debito) REFERENCES DEBITO(Id_Debito);

ALTER TABLE PAGAR ADD CONSTRAINT PAGAR_FK3
FOREIGN KEY (Id_Efectivo) REFERENCES EFECTIVO(Id_Efectivo);

ALTER TABLE PAGAR ADD CONSTRAINT PAGAR_FK4
FOREIGN KEY (Id_Tarjeta_de_credito) REFERENCES TARJETA_DE_CREDITO(Id_Tarjeta_de_credito);

COMMENT ON COLUMN PAGAR.Id_Pago IS 'Identificador del pago.';
COMMENT ON COLUMN PAGAR.Id_Debito IS 'Identificador de debito.';
COMMENT ON COLUMN PAGAR.Id_Efectivo IS 'Identificador de efectivo.';
COMMENT ON COLUMN PAGAR.Id_Tarjeta_de_credito IS 'Identificador de tarjeta de credito.';
COMMENT ON TABLE PAGAR IS 'Contiene la información de los tipos de pagos.';




CREATE TABLE COMPRAR (
	Id_Venta_Fisica INT NOT NULL,
	Id_Ventas_electronicas INT NOT NULL,
	Id_Cliente INT NOT NULL
);

ALTER TABLE COMPRAR ADD CONSTRAINT COMPRAR_PK
PRIMARY KEY (Id_Venta_Fisica, Id_Ventas_electronicas, Id_Cliente);

ALTER TABLE COMPRAR ADD CONSTRAINT COMPRAR_FK1
FOREIGN KEY (Id_Venta_Fisica) REFERENCES VENTA_FISICA(Id_Venta_Fisica);

ALTER TABLE COMPRAR ADD CONSTRAINT COMPRAR_FK2
FOREIGN KEY (Id_Ventas_electronicas) REFERENCES VENTAS_ELECTRONICAS(Id_Ventas_electronicas);

ALTER TABLE COMPRAR ADD CONSTRAINT COMPRAR_FK3
FOREIGN KEY (Id_Cliente) REFERENCES CLIENTE(Id_Cliente);

COMMENT ON COLUMN COMPRAR.Id_Venta_Fisica IS 'Identificador de la venta Fisica.';
COMMENT ON COLUMN COMPRAR.Id_Ventas_electronicas IS 'Identificador de la venta electronica.';
COMMENT ON COLUMN COMPRAR.Id_Cliente IS 'Identificador del clientes.';
COMMENT ON TABLE COMPRAR IS 'Contiene la información de las compras de los clientes.';



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