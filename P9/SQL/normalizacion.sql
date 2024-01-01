--Creacion de las 5 tablas con sus respectivas llaves que resultaron de la normalizacion

CREATE TABLE seccion_tipo (
	nombre_estado VARCHAR(50) NOT NULL,
	seccion numeric(5,0),
	tipo VARCHAR(1),
	cabecera_distrital_federal VARCHAR(50),
	cabecera_distrital_local VARCHAR(50),
	nombre_municipio VARCHAR(50)
);
ALTER TABLE seccion_tipo ADD CONSTRAINT seccion_tipo_PK
PRIMARY KEY (nombre_estado,seccion,tipo);

COMMENT ON COLUMN seccion_tipo.nombre_estado IS 'Nombre del Estado.';
COMMENT ON COLUMN seccion_tipo.seccion IS 'seccion del Estado.';
COMMENT ON COLUMN seccion_tipo.tipo IS 'Letra del tipo del Estado.';
COMMENT ON COLUMN seccion_tipo.cabecera_distrital_federal IS 'Nombre de Cabecera distrital federal.';
COMMENT ON COLUMN seccion_tipo.cabecera_distrital_local IS 'Nombre de Cabecera distrital local.';
COMMENT ON COLUMN seccion_tipo.nombre_municipio IS 'Nombre del municipio.';
COMMENT ON TABLE seccion_tipo IS 'Contiene la información de los nombres de los Estados.';


CREATE TABLE cabecera_distrital_federal (
	cabecera_distrital_federal VARCHAR(50) NOT NULL,
	nombre_estado VARCHAR(50)
);
ALTER TABLE cabecera_distrital_federal ADD CONSTRAINT cabecera_distrital_federal_PK
PRIMARY KEY (cabecera_distrital_federal,nombre_estado);

COMMENT ON COLUMN cabecera_distrital_federal.cabecera_distrital_federal IS 'Nombre de Cabecera distrital federal.';
COMMENT ON COLUMN cabecera_distrital_federal.nombre_estado IS 'Nombre del Estado.';
COMMENT ON TABLE cabecera_distrital_federal IS 'Contiene la información de las cabeceras federales.';


CREATE TABLE cabecera_distrital_local (
	cabecera_distrital_local VARCHAR(50) NOT NULL,
	nombre_estado VARCHAR(50)
);
ALTER TABLE cabecera_distrital_local ADD CONSTRAINT cabecera_distrital_local_PK
PRIMARY KEY (cabecera_distrital_local,nombre_estado);

COMMENT ON COLUMN cabecera_distrital_local.cabecera_distrital_local IS 'Nombre de Cabecera distrital local.';
COMMENT ON COLUMN cabecera_distrital_local.nombre_estado IS 'Nombre del Estado.';
COMMENT ON TABLE cabecera_distrital_local IS 'Contiene la información de las cabeceras locales.';


CREATE TABLE nombre_municipio (
	nombre_municipio VARCHAR(50) NOT NULL,
	nombre_estado VARCHAR(50)
);
ALTER TABLE nombre_municipio ADD CONSTRAINT nombre_municipio_PK
PRIMARY KEY (nombre_municipio,nombre_estado);

COMMENT ON COLUMN nombre_municipio.nombre_municipio IS 'Nombre del municipio.';
COMMENT ON COLUMN nombre_municipio.nombre_estado IS 'Nombre del Estado.';
COMMENT ON TABLE nombre_municipio IS 'Contiene la información de los municipios.';


CREATE TABLE nombre_estado (
	nombre_estado VARCHAR(50) NOT NULL,
	abreviatura VARCHAR(10)
);
ALTER TABLE nombre_estado ADD CONSTRAINT nombre_estado_PK
PRIMARY KEY (nombre_estado);

COMMENT ON COLUMN nombre_estado.nombre_estado IS 'Nombre del Estado.';
COMMENT ON COLUMN nombre_estado.abreviatura IS 'Abreviatura del Estado.';
COMMENT ON TABLE nombre_estado IS 'Contiene la información de los nombres de los Estados.';

--Poblado de tablas con la informacion correspondiente
INSERT INTO seccion_tipo
(SELECT DISTINCT nombre_estado,seccion,tipo,cabecera_distrital_federal,cabecera_distrital_local,nombre_municipio FROM tmp_ggc);

INSERT INTO cabecera_distrital_federal
(SELECT DISTINCT cabecera_distrital_federal,nombre_estado FROM tmp_ggc);

INSERT INTO cabecera_distrital_local
(SELECT DISTINCT cabecera_distrital_local,nombre_estado FROM tmp_ggc);

INSERT INTO nombre_municipio
(SELECT DISTINCT nombre_municipio,nombre_estado FROM tmp_ggc);

INSERT INTO nombre_estado
(SELECT DISTINCT nombre_estado,abreviatura FROM tmp_ggc);