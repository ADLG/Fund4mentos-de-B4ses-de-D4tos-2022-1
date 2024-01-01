--CONSULTAS
--1. Obtener el nombre y la abreviatura de cada uno de los estados que existan
--   en la tabla de geografico_completo, no deben aparecer estados repetidos.
select distinct nombre_estado, abreviatura from geografico.geografico_completo order by 1

--2. Obtener el nombre del estado y cabecera distrital federal, que exista en la tabla de geografico_completo,
--   no deben aparecer cabeceras distritales repetidas.
select distinct nombre_estado, cabecera_distrital_federal from geografico.geografico_completo order by 1

--Sintaxis DML
--1. Insertar un estado llamado ’mi estado’.
INSERT INTO geografico.geografico_completo (nombre_estado) VALUES ('MI ESTADO');

--2. Insertar 2 distritos federales, distritos locales y municipios diferentes.
INSERT INTO geografico.geografico_completo (cabecera_distrital_federal,cabecera_distrital_local,nombre_municipio)
VALUES ('VENTURAS','VENTURAS','VENTURAS');
INSERT INTO geografico.geografico_completo (cabecera_distrital_federal,cabecera_distrital_local,nombre_municipio)
VALUES ('GROVE','SAN FIERRO','TRUTH');

--3. Insertar 2 secciones para cada uno de los distritos federales.
INSERT INTO geografico.geografico_completo (seccion) VALUES ('6519');
INSERT INTO geografico.geografico_completo (seccion) VALUES ('6520');

--4. Actualizar el nombre del estado de ’AGUASCALIENTES’ para que ahora se llame ’AGUASCALIENTES NUEVO’.
UPDATE geografico.geografico_completo SET nombre_estado = 'AGUASCALIENTES NUEVO' WHERE nombre_estado = 'AGUASCALIENTES';

--5. Actualizar una sección para el estado de ’TAMAULIPAS’ con cabecera distrital federal ’RIO BRAVO’.
UPDATE geografico.geografico_completo SET seccion = '6521' WHERE nombre_estado = 'TAMAULIPAS' and
cabecera_distrital_federal = 'RIO BRAVO' and seccion = '108';

--6. Actualizar los registros de las primeras dos inserciones para que no tengan ningún campo en null.
UPDATE geografico.geografico_completo SET abreviatura='LV',cabecera_distrital_federal = 'VENTURAS',cabecera_distrital_local = 'VENTURAS',
nombre_municipio = 'VENTURAS',seccion = '6522',tipo = 'G'  WHERE nombre_estado = 'MI ESTADO';

UPDATE geografico.geografico_completo SET abreviatura='LV',nombre_estado = 'MI ESTADO',seccion = '6522',tipo = 'G'
WHERE cabecera_distrital_federal = 'VENTURAS' and nombre_estado is null and nombre_municipio = 'VENTURAS';

UPDATE geografico.geografico_completo SET abreviatura='GS',nombre_estado = 'MI ESTADO',seccion = '6523',tipo = 'G'
WHERE cabecera_distrital_federal = 'GROVE' and nombre_estado is null and nombre_municipio = 'TRUTH';

--7. Borrar todos los registros repetidos en tu tablas geografico_completo.
CREATE TEMP TABLE tmp_ggc AS
(SELECT nombre_estado, abreviatura, cabecera_distrital_federal, cabecera_distrital_local, nombre_municipio, seccion, tipo
FROM geografico.geografico_completo);
DELETE from geografico.geografico_completo;
INSERT INTO geografico.geografico_completo SELECT * FROM tmp_ggc;



