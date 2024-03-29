-- Poblado de la base de datos.

SELECT Registra_Vivero('1','Vivero El SOL','02/02/2000');
SELECT Registra_Vivero('2','Vivero LA LUNA','07/08/2001');
SELECT Registra_Vivero('3','Vivero ESTRELLA','01/03/2002');
SELECT Registra_Vivero('4','Vivero TREBOL','01/04/2002');
SELECT Registra_Vivero('5','Vivero MESA','07/08/2003');
SELECT Registra_Vivero('6','Vivero AZUL','01/03/2004');
SELECT Registra_Vivero('7','Vivero TERRA','01/04/2005');
SELECT Registra_Vivero('8','Vivero GREED','07/08/2005');
SELECT Registra_Vivero('9','Vivero AQUOS','01/03/2006');
SELECT Registra_Vivero('10','Vivero VENTUS','01/04/2007');
SELECT Registra_Vivero('11','Vivero SUBTERRA','07/08/2008');
SELECT Registra_Vivero('12','Vivero HAOS','01/03/2008');
SELECT Registra_Vivero('13','Vivero PYRUS','01/04/2008');
SELECT Registra_Vivero('14','Vivero DARKUS','07/08/2008');
SELECT Registra_Vivero('15','Vivero ESFERA','01/03/2009');

SELECT Registra_Registro('1','Registro 1','A.Haworthia', '11/04/2000', '10/04/2000', '09/04/2000', '09/04/2000');
SELECT Registra_Registro('2','Registro 2','A.Gasteria', '12/04/2000', '08/04/2000', '15/08/2001', '15/08/2001');
SELECT Registra_Registro('3','Registro 3','A.Astrophytum', '12/04/2000', '10/04/2000', '27/02/2002', '27/02/2002');
SELECT Registra_Registro('4','Registro 4','A.Ariocarpus', '12/04/2000', '10/04/2000', '27/02/2002', '27/02/2002');
SELECT Registra_Registro('5','Registro 5','B.Haworthia', '11/04/2001', '10/04/2001', '09/04/2001', '09/04/2001');
SELECT Registra_Registro('6','Registro 6','B.Gasteria', '12/04/2001', '08/04/2001', '15/08/2002', '15/08/2002');
SELECT Registra_Registro('7','Registro 7','B.Astrophytum', '12/04/2001', '10/04/2001', '27/02/2003', '27/02/2003');
SELECT Registra_Registro('8','Registro 8','B.Ariocarpus', '12/04/2001', '10/04/2001', '27/02/2003', '27/02/2003');
SELECT Registra_Registro('9','Registro 9','C.Haworthia', '11/04/2003', '10/04/2003', '09/04/2003', '09/04/2003');
SELECT Registra_Registro('10','Registro 10','C.Gasteria', '12/04/2003', '08/04/2003', '15/08/2001', '15/08/2001');
SELECT Registra_Registro('11','Registro 11','C.Astrophytum', '12/04/2003', '10/04/2003', '27/02/2002', '27/02/2002');
SELECT Registra_Registro('12','Registro 12','C.Ariocarpus', '12/04/2003', '10/04/2003', '27/02/2002', '27/02/2002');
SELECT Registra_Registro('13','Registro 13','D.Haworthia', '11/04/2005', '10/04/2005', '09/04/2002', '09/04/2002');
SELECT Registra_Registro('14','Registro 14','D.Gasteria', '12/04/2005', '08/04/2005', '15/08/2003', '15/08/2003');
SELECT Registra_Registro('15','Registro 15','D.Astrophytum', '12/04/2005', '10/04/2005', '27/02/2004', '27/02/2004');
SELECT Registra_Registro('16','Registro 16','D.Ariocarpus', '12/04/2005', '10/04/2005', '27/02/2004', '27/02/2004');

SELECT Registra_Empleado('1','ACDF710301HSPRZD08','Federico', 'Acuña', 'Uribe', '04/08/1981','ADZS071005BB5', '8000', '01/04/2000','36 Arbol, Alvaro Obregon, CDMX, 01161');
SELECT Registra_Empleado('2','EAAA930609HMSSLL00','Jose Alejandro', 'Bonilla', 'Leyva', '13/07/1982','EIZN060214DZ7', '8000', '07/08/2001','74 Tlaxcala, Alvaro Obregon, CDMX');
SELECT Registra_Empleado('3','BORK951215MDFGNM01','Josefina', 'Diaz', 'Rojas', '22/11/1992','KIZN000801PT3', '8000', '02/03/2002','192 Cerro Azul, Azcapotzalco, CDMX');
SELECT Registra_Empleado('4','CXGE000615HQRBRDA0','Maria', 'Camacho', 'Valle', '04/08/1980','KLSS071005BB5', '8000', '03/04/2002','35 Manuel Salazarn, CDMX, 01260');
SELECT Registra_Empleado('5','LUCB010429MQRNRRA6','Celia', 'Ortiz', 'Vargas', '13/08/1985','EIAFT06021DZ7', '8000', '07/08/2003','17 Joaquín Ibarguen, CDMX');
SELECT Registra_Empleado('6','NAPK010401MQRVRRA5','Joaquin', 'Valle', 'Camacho', '16/11/1993','KKLS000801PT3', '8000', '05/03/2004','116 Eugenio Avina, CDMX');
SELECT Registra_Empleado('7','XUPA990819MQRLTN06','Angel', 'Vargas', 'Ortiz', '04/08/1984','ADZS071AF5BB5', '8000', '01/04/2005','415 Av Hombres Ilustres, CDMX, 01010');
SELECT Registra_Empleado('8','AODM970831MCSRZR01','Roberto', 'Villegas', 'Lopez', '13/09/1988','EIZN002AFTDZ7', '8000', '07/08/2005','419 C. Fuente de La Diana, CDMX');
SELECT Registra_Empleado('9','SIMR000308HCCLNMA0','Pedro', 'Lopez', 'Villegas', '12/11/1995','KIKLS00801PT3', '8000', '01/03/2006','49 Calle Fernando Roman Lugo, CDMX');
SELECT Registra_Empleado('10','CATS011001MQRHJDA2','Esperanza', 'Ruiz', 'Cordera', '04/10/1989','ADAFT07105BB5', '8000', '06/04/2007','113 C. 37, CDMX, 01460');
SELECT Registra_Empleado('11','MATV001816HQRLLCA4','Simon', 'Cordera', 'Ruiz', '13/07/1984','EIZN0KLS14DZ7', '8000', '07/08/2008','7 Martillo, CDMX');
SELECT Registra_Empleado('12','LOUY011123HQRRHRA8','Rodolfo', 'Estrada', 'Gallegos', '22/11/1994','KIZNFT0801PT3', '8000', '07/03/2008','51 C. Vicente Beristain, CDMX');
SELECT Registra_Empleado('13','FEDE020723MQRRZSA0','Jorge', 'Gallegos', 'Estrada', '13/12/1987','EKLS06AFT4DZ7', '8000', '08/04/2008','7 Calle Zárraga, CDMX, 06160');
SELECT Registra_Empleado('14','AADF010916MQRRZBA1','Armando', 'Hurtado', 'Lara', '05/11/1997','KISAAT0801PT3', '8000', '07/08/2008','168 Calle Martínez Río, CDMX');
SELECT Registra_Empleado('15','OUGA990914MQRLLD08','Rafael', 'Lara', 'Hurtado', '02/11/1990','KIZNKAFT81PT3', '8000', '01/03/2009','77 Zacatecas, CDMX');
SELECT Registra_Empleado('16','MXGE000615HQRBRDA0','Martin', 'Valle', 'Camacho', '04/01/1991','KLSNA71005BB5', '8000', '11/04/2002','20 Manuel Salazarn, CDMX, 01260');
SELECT Registra_Empleado('17','LU0B010429MQRNRRA6','Jaqueline', 'Vargas', 'Ortiz', '13/02/1995','EIAFTNA014DZ7', '8000', '17/08/2005','123 C. Fuente de La Diana, CDMX');
SELECT Registra_Empleado('18','NAPK010001MQRVRRA5','Ximena', 'Camacho', 'Valle', '16/11/1993','KKLSN00801PT3', '8000', '11/04/2000','345 Arbol, Obregon, CDMX, 01161');
SELECT Registra_Empleado('19','EAAA030609HMSSLL00','Tomas', 'Leyva', 'Bonilla', '13/02/1994','EIZN0621NADZ7', '8000', '17/08/2001','47 Tlaxcala, Alvaro Obregon, CDMX');
SELECT Registra_Empleado('20','BORK901215MDFGNM01','Aurelio', 'Rojas', 'Diaz', '22/04/1992','KIZN0NA081PT3', '8000', '21/03/2002','125 Cerro Azul, Azcapotzalco, CDMX');
SELECT Registra_Empleado('21','AADF010016MQRRZBA1','Angel', 'Lara', 'Hurtado', '05/06/1997','KISAAT080APT3', '8000', '21/03/2008','523 C. Vicente Beristain, CDMX');
SELECT Registra_Empleado('22','OUGA9909141QRLLD08','Estefan', 'Hurtado', 'Lara', '02/08/1990','KIZNKAFT801T3', '8000', '17/08/2003','46 Joaquín Ibarguen, CDMX');
SELECT Registra_Empleado('23','XUPA990810MQRLTN06','Ana', 'Ortiz', 'Vargas', '04/04/1994','ADZS07AFNA5B5', '8000', '27/08/2008','78 Calle Dr Martínez del Río, CDMX');
SELECT Registra_Empleado('24','SIMR000308H0CLNMA0','Alvaro', 'Villegas', 'Lopez', '12/05/1995','KIKSNA0801PT3', '8000', '11/03/2009','345 Zacatecas, CDMX');
SELECT Registra_Empleado('25','CATS011001MQ0HJDA2','Jose', 'Cordera', 'Ruiz', '04/02/1994','ADAFT07005NA5', '8000', '21/03/2004','112 Eugenio Avina, CDMX');
SELECT Registra_Empleado('26','MATV000816HQRLLCA4','Karen', 'Ruiz', 'Cordera', '13/01/1992','EIZ0KLNA14DZ7', '8000', '21/03/2006','456 Calle Fernando Roman Lugo, CDMX');
SELECT Registra_Empleado('27','LOUY0111230QRRHRA8','Kanon', 'Gallegos', 'Estrada', '22/10/1995','KIZNFT08A1PT3', '8000', '21/04/2005','474 Av Hombres Ilustres, CDMX, 01010');
SELECT Registra_Empleado('28','FEDE000723MQRRZSA0','Arturo', 'Estrada', 'Gallegos', '13/10/1996','EKS06NAFT4DZ7', '8000', '11/04/2008','75 Calle Dr.  Zárraga, CDMX, 06160');
SELECT Registra_Empleado('29','ACDF7103010SPRZD08','Alejandro', 'Uribe', 'Acuña', '04/05/1997','ADZS0100NABB5', '8000', '21/04/2007','125 C. 37, CDMX, 01460');
SELECT Registra_Empleado('30','AODM900831MCSRZR01','Alfonso', 'Lopez', 'Villegas', '13/02/1998','EIZN0NA2AFDZ7', '8000', '17/08/2008','14 Martillo, CDMX');

INSERT INTO Rol VALUES ('1', 'Gerente Vivero');
INSERT INTO Rol VALUES ('2', 'Cuidador de Plantas');
INSERT INTO Rol VALUES ('3', 'Cajero');
INSERT INTO Rol VALUES ('4', 'Encargado de mostrar plantas');

SELECT Registra_Cliente('1','A1','Maura', 'Marin', 'Lopez','01/02/1975', '24 C. Saltillo, Nezahualcóyotl, Estado de México','GOVM860812QA2');
SELECT Registra_Cliente('2','A2','Guillermo Daniel', 'Ortega', 'Ortiz','02/06/1971', '20 Aguascalientes, Ecatepec de Morelos, Estado de México','JACL841028Q62');
SELECT Registra_Cliente('3','A3','Alberto', 'Gonzalez', 'Garcia','03/08/1972', '75 Serafín Olarte, Ciudad de México, Cd. de México','MOMM770119F65');
SELECT Registra_Cliente('4','A4','Carolina', 'Lopez', 'Herrera','04/04/1971', '163 San Lucas, Ciudad de México, Cd. de México','GORJ8608234G3');
SELECT Registra_Cliente('5','A5','Andrea Daniela', 'Romero', 'Diaz','05/09/1983', '32 Av. del Panteón, Ciudad de México, Cd. de México','RAGF630503EW7');
SELECT Registra_Cliente('6','A6','Ricardo', 'Juarez', 'Castañeda','06/01/1984', '26 Ixtapan, Los Reyes Acaquilpan, Estado de México','GOJG631109QM4');
SELECT Registra_Cliente('7','A7','Monica', 'Tamayo', 'Sierra','07/02/1985', '312 Maíz Ciudad de México','EAJL850910UA7');
SELECT Registra_Cliente('8','A8','Leopoldo', 'Sierra', 'Tamayo','08/05/1985', '30 Eje 1 Ote Ciudad de México','GALR901220DN0');
SELECT Registra_Cliente('9','A9','Felipe', 'Sosa', 'Madero','09/03/1986', '76 Av. de los Montes Ciudad de México','RURL821230BI7');
SELECT Registra_Cliente('10','A10','Venustiano', 'Becerra', 'Luna','01/07/1987', '53 Priv. Agustín Gutiérrez Ciudad de México','MACA7802251N2');
SELECT Registra_Cliente('11','A11','Ivan', 'Reyes', 'Guerrero','02/09/1998', '54 Miguel Lerdo de Tejada Ciudad de México, Cd. de México','BERO760929EN9');
SELECT Registra_Cliente('12','A12','Francisco', 'Valdez', 'Perez','03/03/1998', '162 Bahía Ciudad de México, Cd. de México','LIVC610518NV9');
SELECT Registra_Cliente('13','A13','Jesus', 'Perez', 'Valdez','04/01/1998', '39 C. 2 Ciudad de México, Cd. de México','JAGA811030KZ3');
SELECT Registra_Cliente('14','A14','Mario', 'Guerrero', 'Reyes','05/02/1998', 'Vasco de Quiroga Ciudad de México, Cd. de México','HUHL7205233T9');
SELECT Registra_Cliente('15','A15','Victor', 'Luna', 'Becerra','06/05/1999', '28 Gobernador Tiburcio Montiel Ciudad de México, Cd. de México','GARP690128RR0');
SELECT Registra_Cliente('16','A16','Salvador', 'Madero', 'Sosa','07/06/1991', '23 Cozumel  Ciudad de México, Cd. de México','GOMA750911RL2');

INSERT INTO Semillas_r2 VALUES ('F1', '07/04/1998', '150');
INSERT INTO Semillas_r2 VALUES ('F2', '14/08/1999', '150');
INSERT INTO Semillas_r2 VALUES ('F3', '23/02/1999', '300');
INSERT INTO Semillas_r2 VALUES ('F4', '02/02/1999', '150');
INSERT INTO Semillas_r2 VALUES ('F5', '07/04/1999', '150');
INSERT INTO Semillas_r2 VALUES ('F6', '14/08/2000', '150');
INSERT INTO Semillas_r2 VALUES ('F7', '23/02/2000', '300');
INSERT INTO Semillas_r2 VALUES ('F8', '02/02/2000', '150');
INSERT INTO Semillas_r2 VALUES ('F9', '07/04/2001', '150');
INSERT INTO Semillas_r2 VALUES ('F10', '14/08/2002', '150');
INSERT INTO Semillas_r2 VALUES ('F11', '23/02/2002', '300');
INSERT INTO Semillas_r2 VALUES ('F12', '02/02/2002', '150');
INSERT INTO Semillas_r2 VALUES ('F13', '07/04/2002', '150');
INSERT INTO Semillas_r2 VALUES ('F14', '14/08/2003', '150');
INSERT INTO Semillas_r2 VALUES ('F15', '23/02/2003', '300');

INSERT INTO Semillas_r1 VALUES ('1', 'F1');
INSERT INTO Semillas_r1 VALUES ('2', 'F2');
INSERT INTO Semillas_r1 VALUES ('3', 'F3');
INSERT INTO Semillas_r1 VALUES ('4', 'F4');
INSERT INTO Semillas_r1 VALUES ('5', 'F5');
INSERT INTO Semillas_r1 VALUES ('6', 'F6');
INSERT INTO Semillas_r1 VALUES ('7', 'F7');
INSERT INTO Semillas_r1 VALUES ('8', 'F8');
INSERT INTO Semillas_r1 VALUES ('9', 'F9');
INSERT INTO Semillas_r1 VALUES ('10', 'F10');
INSERT INTO Semillas_r1 VALUES ('11', 'F11');
INSERT INTO Semillas_r1 VALUES ('12', 'F12');
INSERT INTO Semillas_r1 VALUES ('13', 'F13');
INSERT INTO Semillas_r1 VALUES ('14', 'F14');
INSERT INTO Semillas_r1 VALUES ('15', 'F15');

SELECT Registra_Semillas_Germinadas('1','60','America 1', '01/08/1998','05/02/1999', '01/02/1999', '01/02/1999');
SELECT Registra_Semillas_Germinadas('2','90','Africa 2', '14/12/1999','12/06/2000', '10/06/2000', '10/06/2000');
SELECT Registra_Semillas_Germinadas('3','60','America 3', '02/09/1998','05/03/1999', '02/03/1999', '02/03/1999');
SELECT Registra_Semillas_Germinadas('4','90','Africa 4', '15/01/2001','12/06/2002', '10/06/2002', '10/06/2002');
SELECT Registra_Semillas_Germinadas('5','60','America 5', '03/10/1998','05/04/1999', '03/04/1999', '03/04/1999');
SELECT Registra_Semillas_Germinadas('6','90','Africa 6', '16/02/2001','12/06/2002', '10/06/2002', '10/06/2002');
SELECT Registra_Semillas_Germinadas('7','60','America 7', '04/11/1998','05/05/1999', '04/05/1999', '04/05/1999');
SELECT Registra_Semillas_Germinadas('8','90','Africa 8', '17/03/2002','12/06/2003', '10/06/2003', '10/06/2003');
SELECT Registra_Semillas_Germinadas('9','60','America 9', '05/12/1998','05/06/1999', '05/06/1999', '05/06/1999');
SELECT Registra_Semillas_Germinadas('10','90','Africa 10', '18/04/2003','12/06/2004', '10/06/2004', '10/06/2004');
SELECT Registra_Semillas_Germinadas('11','60','America 11', '06/01/1998','05/07/1999', '06/07/1999', '06/07/1999');
SELECT Registra_Semillas_Germinadas('12','90','Africa 12', '19/05/2004','12/06/2005', '10/06/2005', '10/06/2005');
SELECT Registra_Semillas_Germinadas('13','60','America 13', '07/02/1998','05/08/1999', '07/09/1999', '07/09/1999');
SELECT Registra_Semillas_Germinadas('14','90','Africa 14', '20/06/2005','12/06/2005', '10/06/2005', '10/06/2005');
SELECT Registra_Semillas_Germinadas('15','60','America 15', '07/02/2006','01/08/2007', '01/09/2007', '01/09/2007');

INSERT INTO Plantas_r2 VALUES ('Haworthia G','89.99', '150');
INSERT INTO Plantas_r2 VALUES ('Gasteria G','49.99', '100');
INSERT INTO Plantas_r2 VALUES ('Astrophytum G','49.99', '200');
INSERT INTO Plantas_r2 VALUES ('Ariocarpus G','29.99', '140');
INSERT INTO Plantas_r2 VALUES ('Haworthia P','179.99', '100');
INSERT INTO Plantas_r2 VALUES ('Gasteria P','119.99', '400');
INSERT INTO Plantas_r2 VALUES ('Astrophytum P','99.99', '150');
INSERT INTO Plantas_r2 VALUES ('Ariocarpus P','69.99', '200');

INSERT INTO Plantas_r1 VALUES ('1', 'Haworthia G','17/08/1998','09/03/1997');
INSERT INTO Plantas_r1 VALUES ('2', 'Gasteria G','24/12/1999','01/02/1999');
INSERT INTO Plantas_r1 VALUES ('3', 'Astrophytum G','05/02/1999','10/06/2000');
INSERT INTO Plantas_r1 VALUES ('4', 'Ariocarpus G','12/06/2000','02/03/1999');
INSERT INTO Plantas_r1 VALUES ('5', 'Haworthia P','05/03/1999','10/06/2002');
INSERT INTO Plantas_r1 VALUES ('6', 'Gasteria P','12/06/2002','20/01/1998');
INSERT INTO Plantas_r1 VALUES ('7', 'Astrophytum P','05/04/1999','03/04/1999');
INSERT INTO Plantas_r1 VALUES ('8', 'Ariocarpus P','12/06/2002','10/06/2002');
INSERT INTO Plantas_r1 VALUES ('9', 'Haworthia G','05/05/1999','04/05/1999');
INSERT INTO Plantas_r1 VALUES ('10', 'Gasteria G','12/06/2003','10/06/2003');
INSERT INTO Plantas_r1 VALUES ('11', 'Astrophytum G','05/06/1999','05/06/1999');
INSERT INTO Plantas_r1 VALUES ('12', 'Ariocarpus G','12/06/2004','10/06/2004');
INSERT INTO Plantas_r1 VALUES ('13', 'Haworthia P','05/07/1999','06/07/1999');
INSERT INTO Plantas_r1 VALUES ('14', 'Gasteria P','12/06/2005','10/06/2005');
INSERT INTO Plantas_r1 VALUES ('15', 'Astrophytum P','05/08/1999','07/09/1999');
INSERT INTO Plantas_r1 VALUES ('16', 'Ariocarpus P','12/06/2005','10/06/2005');

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
VALUES ('PTHAG','Haworthia G','90');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTHAP','Haworthia P','50');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTGAG','Gasteria G','50');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTGAP','Gasteria P','30');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTASG','Astrophytum G','180');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTASP','Astrophytum P','120');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTARG','Ariocarpus G','100');
INSERT INTO VENTA_FISICA_r3
VALUES ('PTARP','Ariocarpus P','70');

SELECT Registra_Venta_Fisica('1','1','1','A1','PTHAP','01/04/2002','1','16','1','Efectivo','1','90');
SELECT Registra_Venta_Fisica('2','2','2','A2','PTGAP','11/05/2000','2','17','2','Tarjeta de Debito','1','50');
SELECT Registra_Venta_Fisica('3','3','3','A3','PTASP','17/09/2001','3','18','3','Efectivo','1','50');
SELECT Registra_Venta_Fisica('4','4','4','A4','PTHAP','01/05/2000','4','19','4','Tarjeta de Credito','1','30');
SELECT Registra_Venta_Fisica('5','5','5','A5','PTGAP','02/07/2001','5','20','5','Tarjeta de Debito','1','180');
SELECT Registra_Venta_Fisica('6','6','6','A6','PTASP','03/04/2002','6','21','6','Tarjeta de Debito','1','120');
SELECT Registra_Venta_Fisica('7','7','7','A7','PTHAP','04/05/2002','7','22','7','Efectivo','1','100');
SELECT Registra_Venta_Fisica('8','8','8','A8','PTGAP','05/09/2003','8','23','8','Tarjeta de Credito','1','70');
SELECT Registra_Venta_Fisica('9','9','9','A9','PTASP','06/04/2004','9','24','9','Efectivo','2','180');
SELECT Registra_Venta_Fisica('10','10','10','A10','PTHAP','07/05/2005','10','25','10','Efectivo','2','100');
SELECT Registra_Venta_Fisica('11','11','11','A11','PTGAP','08/09/2005','11','26','11','Tarjeta de Debito','2','100');
SELECT Registra_Venta_Fisica('12','12','12','A12','PTASP','09/04/2006','12','27','12','Tarjeta de Debito','2','60');
SELECT Registra_Venta_Fisica('13','13','13','A13','PTHAP','11/05/2007','13','28','13','Efectivo','2','360');
SELECT Registra_Venta_Fisica('14','14','14','A14','PTGAP','13/09/2008','14','29','14','Tarjeta de Credito','2','240');
SELECT Registra_Venta_Fisica('15','15','15','A15','PTASP','15/04/2008','15','30','15','Efectivo','2','200');
SELECT Registra_Venta_Fisica('16','16','16','A16','PTHAP','17/05/2008','16','30','16','Efectivo','2','140');
SELECT Registra_Venta_Fisica('1','17','17','A1','PTGAP','22/09/2008','1','16','1','Tarjeta de Debito','2','120');
SELECT Registra_Venta_Fisica('1','18','18','A1','PTASP','10/04/2009','1','16','1','Tarjeta de Credito','2','240');

SELECT Registra_Venta_Electronica('1','1','1','06/04/2000','A4','Carolina', 'Lopez', 'Herrera','1','Haworthia G','90','24 C. Saltillo, Nezahualcóyotl, Estado de México','06/04/2000','Tarjeta de Credito','90');
SELECT Registra_Venta_Electronica('2','2','2','10/08/2001','A5','Andrea Daniela', 'Romero', 'Diaz','1','Haworthia P','50','20 Aguascalientes, Ecatepec de Morelos, Estado de México','10/08/2001','Tarjeta de Debito','50');
SELECT Registra_Venta_Electronica('3','3','3','11/03/2002','A6','Ricardo', 'Juarez', 'Castañeda','1','Gasteria G','50','75 Serafín Olarte, Ciudad de México, Cd. de México','11/03/2002','Tarjeta de Credito','50');
SELECT Registra_Venta_Electronica('4','4','4','15/04/2002','A4','Carolina', 'Lopez', 'Herrera','1','Gasteria P','30','163 San Lucas, Ciudad de México, Cd. de México','15/04/2002','Tarjeta de Debito','30');
SELECT Registra_Venta_Electronica('5','5','5','10/08/2003','A5','Andrea Daniela', 'Romero', 'Diaz','1','Astrophytum G','180','32 Av. del Panteón, Ciudad de México, Cd. de México','10/08/2003','Tarjeta de Debito','180');
SELECT Registra_Venta_Electronica('6','6','6','12/03/2004','A6','Ricardo', 'Juarez', 'Castañeda','1','Astrophytum P','120','26 Ixtapan, Los Reyes Acaquilpan, Estado de México','12/03/2004','Tarjeta de Credito','120');
SELECT Registra_Venta_Electronica('7','7','7','14/04/2005','A4','Carolina', 'Lopez', 'Herrera','1','Ariocarpus G','100','312 Maíz Ciudad de México ','14/04/2005','Tarjeta de Credito','100');
SELECT Registra_Venta_Electronica('8','8','8','16/08/2005','A5','Andrea Daniela', 'Romero', 'Diaz','1','Ariocarpus P','70','30 Eje 1 Ote Ciudad de México ','16/08/2005','Tarjeta de Credito','70');
SELECT Registra_Venta_Electronica('9','9','9','19/03/2006','A6','Ricardo', 'Juarez', 'Castañeda','2','Haworthia G,Haworthia G','180','76 Av. de los Montes Ciudad de México','19/03/2006','Tarjeta de Credito','180');
SELECT Registra_Venta_Electronica('10','10','10','20/04/2007','A4','Carolina', 'Lopez', 'Herrera','2','Haworthia P,Haworthia P','100','53 Priv. Agustín Gutiérrez Ciudad de México ','20/04/2007','Tarjeta de Debito','100');
SELECT Registra_Venta_Electronica('11','11','11','21/08/2008','A5','Andrea Daniela', 'Romero', 'Diaz','2','Gasteria G,Gasteria G','100','54 Miguel Lerdo de Tejada Ciudad de México, Cd. de México ','21/08/2008','Tarjeta de Debito','100');
SELECT Registra_Venta_Electronica('12','12','12','21/03/2008','A6','Ricardo', 'Juarez', 'Castañeda','2','Gasteria P,Gasteria P','60','162 Bahía Ciudad de México, Cd. de México','21/03/2008','Tarjeta de Debito','60');
SELECT Registra_Venta_Electronica('13','13','13','22/04/2008','A4','Carolina', 'Lopez', 'Herrera','2','Astrophytum G,Astrophytum G','360','39 C. 2 Ciudad de México, Cd. de México ','22/04/2008','Tarjeta de Credito','360');
SELECT Registra_Venta_Electronica('14','14','14','25/08/2008','A5','Andrea Daniela', 'Romero', 'Diaz','2','Astrophytum P,Astrophytum P','240','Vasco de Quiroga Ciudad de México, Cd. de México ','25/08/2008','Tarjeta de Credito','240');
SELECT Registra_Venta_Electronica('15','15','15','21/03/2009','A4','Carolina', 'Lopez', 'Herrera','2','Astrophytum G,Astrophytum G','360','110 San Lucas, Ciudad de México, Cd. de México, Cd. de México ','21/03/2009','Tarjeta de Debito','240');

SELECT Registra_Pago_f('1', 'Efectivo');
SELECT Registra_Pago_f('2', 'Tarjeta de Debito');
SELECT Registra_Pago_f('3', 'Efectivo');
SELECT Registra_Pago_f('4', 'Tarjeta de Credito');
SELECT Registra_Pago_f('5', 'Tarjeta de Debito');
SELECT Registra_Pago_f('6', 'Tarjeta de Debito');
SELECT Registra_Pago_f('7', 'Efectivo');
SELECT Registra_Pago_f('8', 'Tarjeta de Credito');
SELECT Registra_Pago_f('9', 'Efectivo');
SELECT Registra_Pago_f('10', 'Efectivo');
SELECT Registra_Pago_f('11', 'Tarjeta de Debito');
SELECT Registra_Pago_f('12', 'Tarjeta de Debito');
SELECT Registra_Pago_f('13', 'Efectivo');
SELECT Registra_Pago_f('14', 'Tarjeta de Credito');
SELECT Registra_Pago_f('15', 'Efectivo');
SELECT Registra_Pago_f('16', 'Efectivo');
SELECT Registra_Pago_f('17', 'Tarjeta de Debito');
SELECT Registra_Pago_f('18', 'Tarjeta de Credito');

SELECT Registra_Pago_e('1', 'Tarjeta de Credito');
SELECT Registra_Pago_e('2', 'Tarjeta de Debito');
SELECT Registra_Pago_e('3', 'Tarjeta de Credito');
SELECT Registra_Pago_e('4', 'Tarjeta de Debito');
SELECT Registra_Pago_e('5', 'Tarjeta de Debito');
SELECT Registra_Pago_e('6', 'Tarjeta de Credito');
SELECT Registra_Pago_e('7', 'Tarjeta de Credito');
SELECT Registra_Pago_e('8', 'Tarjeta de Credito');
SELECT Registra_Pago_e('9', 'Tarjeta de Credito');
SELECT Registra_Pago_e('10', 'Tarjeta de Debito');
SELECT Registra_Pago_e('11', 'Tarjeta de Debito');
SELECT Registra_Pago_e('12', 'Tarjeta de Debito');
SELECT Registra_Pago_e('13', 'Tarjeta de Credito');
SELECT Registra_Pago_e('14', 'Tarjeta de Credito');
SELECT Registra_Pago_e('15', 'Tarjeta de Debito');

SELECT Registra_TELEFONO_VIV('1', '1', '525533996710');
SELECT Registra_TELEFONO_VIV('2', '2', '525533769911');
SELECT Registra_TELEFONO_VIV('3', '3', '525533489990');
SELECT Registra_TELEFONO_VIV('4', '4', '525533996780');
SELECT Registra_TELEFONO_VIV('5', '5', '525533999991');
SELECT Registra_TELEFONO_VIV('6', '6', '525533229990');
SELECT Registra_TELEFONO_VIV('7', '7', '525533996220');
SELECT Registra_TELEFONO_VIV('8', '8', '525533799811');
SELECT Registra_TELEFONO_VIV('9', '9', '525539987990');
SELECT Registra_TELEFONO_VIV('10', '10', '525533499710');
SELECT Registra_TELEFONO_VIV('11', '11', '525533995991');
SELECT Registra_TELEFONO_VIV('12', '12', '525533487990');
SELECT Registra_TELEFONO_VIV('13', '13', '525533456990');
SELECT Registra_TELEFONO_VIV('14', '14', '525533299811');
SELECT Registra_TELEFONO_VIV('15', '15', '525539987110');

SELECT Registra_DIRECCION_VIV('1', '1', '233 C. Nubia Ciudad de México');
SELECT Registra_DIRECCION_VIV('2', '2', '415 Calle Hipólito Taine Ciudad de México');
SELECT Registra_DIRECCION_VIV('3', '3', '450 Montes Escandinavos Ciudad de México');
SELECT Registra_DIRECCION_VIV('4', '4', '86 C. Sur 128 Ciudad de México');
SELECT Registra_DIRECCION_VIV('5', '5', '15 Halcón Ciudad de México');
SELECT Registra_DIRECCION_VIV('6', '6', '342 Av. Revolución Ciudad de México');
SELECT Registra_DIRECCION_VIV('7', '7', '147 Amsterdam Ciudad de México');
SELECT Registra_DIRECCION_VIV('8', '8', 'Pl. Romita Ciudad de México');
SELECT Registra_DIRECCION_VIV('9', '9', '156 Medellín Ciudad de México');
SELECT Registra_DIRECCION_VIV('10', '10', '52 Luis Moya Ciudad de México');
SELECT Registra_DIRECCION_VIV('11', '11', '8 Aldaco Ciudad de México');
SELECT Registra_DIRECCION_VIV('12', '12', '143 Eje 1 Pte Ciudad de México');
SELECT Registra_DIRECCION_VIV('13', '13', '129 Lafayette Ciudad de México');
SELECT Registra_DIRECCION_VIV('14', '14', '726 Eje 4 Pte Ciudad de México');
SELECT Registra_DIRECCION_VIV('15', '15', '66 Shakespeare Ciudad de México');

SELECT Registra_REGISTRAR('1', '1');
SELECT Registra_REGISTRAR('2', '2');
SELECT Registra_REGISTRAR('3', '3');
SELECT Registra_REGISTRAR('4', '4');
SELECT Registra_REGISTRAR('5', '5');
SELECT Registra_REGISTRAR('6', '6');
SELECT Registra_REGISTRAR('7', '7');
SELECT Registra_REGISTRAR('8', '8');
SELECT Registra_REGISTRAR('9', '9');
SELECT Registra_REGISTRAR('10', '10');
SELECT Registra_REGISTRAR('11', '11');
SELECT Registra_REGISTRAR('12', '12');
SELECT Registra_REGISTRAR('13', '13');
SELECT Registra_REGISTRAR('14', '14');
SELECT Registra_REGISTRAR('15', '15');

SELECT Registra_TRABAJAR('1', '1');
SELECT Registra_TRABAJAR('2', '2');
SELECT Registra_TRABAJAR('3', '3');
SELECT Registra_TRABAJAR('4', '4');
SELECT Registra_TRABAJAR('5', '5');
SELECT Registra_TRABAJAR('6', '6');
SELECT Registra_TRABAJAR('7', '7');
SELECT Registra_TRABAJAR('8', '8');
SELECT Registra_TRABAJAR('9', '9');
SELECT Registra_TRABAJAR('10', '10');
SELECT Registra_TRABAJAR('11', '11');
SELECT Registra_TRABAJAR('12', '12');
SELECT Registra_TRABAJAR('13', '13');
SELECT Registra_TRABAJAR('14', '14');
SELECT Registra_TRABAJAR('15', '15');
SELECT Registra_TRABAJAR('1', '16');
SELECT Registra_TRABAJAR('2', '17');
SELECT Registra_TRABAJAR('3', '18');
SELECT Registra_TRABAJAR('4', '19');
SELECT Registra_TRABAJAR('5', '20');
SELECT Registra_TRABAJAR('6', '21');
SELECT Registra_TRABAJAR('7', '22');
SELECT Registra_TRABAJAR('8', '23');
SELECT Registra_TRABAJAR('9', '24');
SELECT Registra_TRABAJAR('10', '25');
SELECT Registra_TRABAJAR('11', '26');
SELECT Registra_TRABAJAR('12', '27');
SELECT Registra_TRABAJAR('13', '28');
SELECT Registra_TRABAJAR('14', '29');
SELECT Registra_TRABAJAR('15', '30');

SELECT Registra_TELEFONO_EMP('1', '1', '525522059811');
SELECT Registra_TELEFONO_EMP('2', '2', '525522303611');
SELECT Registra_TELEFONO_EMP('3', '3', '525522320411');
SELECT Registra_TELEFONO_EMP('4', '4', '525522659011');
SELECT Registra_TELEFONO_EMP('5', '5', '525522323601');
SELECT Registra_TELEFONO_EMP('6', '6', '525522328011');
SELECT Registra_TELEFONO_EMP('7', '7', '525522650811');
SELECT Registra_TELEFONO_EMP('8', '8', '525522003611');
SELECT Registra_TELEFONO_EMP('9', '9', '525522028711');
SELECT Registra_TELEFONO_EMP('10', '10', '525522051811');
SELECT Registra_TELEFONO_EMP('11', '11', '525522320611');
SELECT Registra_TELEFONO_EMP('12', '12', '525522728411');
SELECT Registra_TELEFONO_EMP('13', '13', '525522659801');
SELECT Registra_TELEFONO_EMP('14', '14', '525522990611');
SELECT Registra_TELEFONO_EMP('15', '15', '525522328401');
SELECT Registra_TELEFONO_EMP('16', '16', '525522609811');
SELECT Registra_TELEFONO_EMP('17', '17', '525522320991');
SELECT Registra_TELEFONO_EMP('18', '18', '525522320911');
SELECT Registra_TELEFONO_EMP('19', '19', '525522659001');
SELECT Registra_TELEFONO_EMP('20', '20', '525522313611');
SELECT Registra_TELEFONO_EMP('21', '21', '525529320411');
SELECT Registra_TELEFONO_EMP('22', '22', '525522650911');
SELECT Registra_TELEFONO_EMP('23', '23', '525522323011');
SELECT Registra_TELEFONO_EMP('24', '24', '525522028411');
SELECT Registra_TELEFONO_EMP('25', '25', '525522652011');
SELECT Registra_TELEFONO_EMP('26', '26', '525520303611');
SELECT Registra_TELEFONO_EMP('27', '27', '525522920911');
SELECT Registra_TELEFONO_EMP('28', '28', '525522653811');
SELECT Registra_TELEFONO_EMP('29', '29', '525522023611');
SELECT Registra_TELEFONO_EMP('30', '30', '525522118401');

SELECT Registra_CORREO_EMP('1', '1', 'Fe_Uribe@gmail.com');
SELECT Registra_CORREO_EMP('2', '2', 'Jo_Bonilla@gmail.com');
SELECT Registra_CORREO_EMP('3', '3', 'Jo_Rojas@gmail.com');
SELECT Registra_CORREO_EMP('4', '4', 'Ma_Valle@gmail.com');
SELECT Registra_CORREO_EMP('5', '5', 'Ce_Vargas@gmail.com');
SELECT Registra_CORREO_EMP('6', '6', 'Jo_Camacho@gmail.com');
SELECT Registra_CORREO_EMP('7', '7', 'An_Ortiz@gmail.com');
SELECT Registra_CORREO_EMP('8', '8', 'Ro_Lopez@gmail.com');
SELECT Registra_CORREO_EMP('9', '9', 'Pe_Villegas@gmail.com');
SELECT Registra_CORREO_EMP('10', '10', 'Es_Cordera@gmail.com');
SELECT Registra_CORREO_EMP('11', '11', 'Si_Ruiz@gmail.com');
SELECT Registra_CORREO_EMP('12', '12', 'Ro_Gallegos@gmail.com');
SELECT Registra_CORREO_EMP('13', '13', 'Jo_Estrada@gmail.com');
SELECT Registra_CORREO_EMP('14', '14', 'Ar_Lara@gmail.com');
SELECT Registra_CORREO_EMP('15', '15', 'Ra_Hurtado@gmail.com');
SELECT Registra_CORREO_EMP('16', '16', 'Ma_Camacho@gmail.com');
SELECT Registra_CORREO_EMP('17', '17', 'Ja_Ortiz@gmail.com');
SELECT Registra_CORREO_EMP('18', '18', 'Xi_Valle@gmail.com');
SELECT Registra_CORREO_EMP('19', '19', 'To_Bonilla@gmail.com');
SELECT Registra_CORREO_EMP('20', '20', 'Au_Diaz@gmail.com');
SELECT Registra_CORREO_EMP('21', '21', 'An_Hurtado@gmail.com');
SELECT Registra_CORREO_EMP('22', '22', 'Es_Lara@gmail.com');
SELECT Registra_CORREO_EMP('23', '23', 'An_Vargas@gmail.com');
SELECT Registra_CORREO_EMP('24', '24', 'Al_Lopez@gmail.com');
SELECT Registra_CORREO_EMP('25', '25', 'Jo_Ruiz@gmail.com');
SELECT Registra_CORREO_EMP('26', '26', 'Ka_Cordera@gmail.com');
SELECT Registra_CORREO_EMP('27', '27', 'Ka_Estrada@gmail.com');
SELECT Registra_CORREO_EMP('28', '28', 'Ar_Gallegos@gmail.com');
SELECT Registra_CORREO_EMP('29', '29', 'Al_Acuña@gmail.com');
SELECT Registra_CORREO_EMP('30', '30', 'Al_Villegas@gmail.com');

SELECT Registra_TIENE_EMP('1', '1');
SELECT Registra_TIENE_EMP('2', '2');
SELECT Registra_TIENE_EMP('3', '4');
SELECT Registra_TIENE_EMP('4', '1');
SELECT Registra_TIENE_EMP('5', '2');
SELECT Registra_TIENE_EMP('6', '4');
SELECT Registra_TIENE_EMP('7', '1');
SELECT Registra_TIENE_EMP('8', '2');
SELECT Registra_TIENE_EMP('9', '4');
SELECT Registra_TIENE_EMP('10', '1');
SELECT Registra_TIENE_EMP('11', '2');
SELECT Registra_TIENE_EMP('12', '4');
SELECT Registra_TIENE_EMP('13', '1');
SELECT Registra_TIENE_EMP('14', '2');
SELECT Registra_TIENE_EMP('15', '1');
SELECT Registra_TIENE_EMP('16', '3');
SELECT Registra_TIENE_EMP('17', '3');
SELECT Registra_TIENE_EMP('18', '3');
SELECT Registra_TIENE_EMP('19', '3');
SELECT Registra_TIENE_EMP('20', '3');
SELECT Registra_TIENE_EMP('21', '3');
SELECT Registra_TIENE_EMP('22', '3');
SELECT Registra_TIENE_EMP('23', '3');
SELECT Registra_TIENE_EMP('24', '3');
SELECT Registra_TIENE_EMP('25', '3');
SELECT Registra_TIENE_EMP('26', '3');
SELECT Registra_TIENE_EMP('27', '3');
SELECT Registra_TIENE_EMP('28', '3');
SELECT Registra_TIENE_EMP('29', '3');
SELECT Registra_TIENE_EMP('30', '3');

SELECT Registra_Controlar('1', '1');
SELECT Registra_Controlar('2', '2');
SELECT Registra_Controlar('3', '3');
SELECT Registra_Controlar('4', '4');
SELECT Registra_Controlar('5', '5');
SELECT Registra_Controlar('6', '6');
SELECT Registra_Controlar('7', '7');
SELECT Registra_Controlar('8', '8');
SELECT Registra_Controlar('9', '9');
SELECT Registra_Controlar('10', '10');
SELECT Registra_Controlar('11', '11');
SELECT Registra_Controlar('12', '12');
SELECT Registra_Controlar('13', '13');
SELECT Registra_Controlar('14', '14');
SELECT Registra_Controlar('15', '15');

SELECT Registra_Germinado('1', '1');
SELECT Registra_Germinado('2', '2');
SELECT Registra_Germinado('3', '3');
SELECT Registra_Germinado('4', '4');
SELECT Registra_Germinado('5', '5');
SELECT Registra_Germinado('6', '6');
SELECT Registra_Germinado('7', '7');
SELECT Registra_Germinado('8', '8');
SELECT Registra_Germinado('9', '9');
SELECT Registra_Germinado('10', '10');
SELECT Registra_Germinado('11', '11');
SELECT Registra_Germinado('12', '12');
SELECT Registra_Germinado('13', '13');
SELECT Registra_Germinado('14', '14');
SELECT Registra_Germinado('15', '15');

SELECT Registra_TIENE_PLA('1', '1');
SELECT Registra_TIENE_PLA('2', '2');
SELECT Registra_TIENE_PLA('3', '3');
SELECT Registra_TIENE_PLA('4', '4');
SELECT Registra_TIENE_PLA('5', '5');
SELECT Registra_TIENE_PLA('6', '6');
SELECT Registra_TIENE_PLA('7', '7');
SELECT Registra_TIENE_PLA('8', '8');
SELECT Registra_TIENE_PLA('9', '9');
SELECT Registra_TIENE_PLA('10', '10');
SELECT Registra_TIENE_PLA('11', '11');
SELECT Registra_TIENE_PLA('12', '12');
SELECT Registra_TIENE_PLA('13', '13');
SELECT Registra_TIENE_PLA('14', '14');
SELECT Registra_TIENE_PLA('15', '15');

SELECT Registra_VENTA_f('1', '1');
SELECT Registra_VENTA_f('2', '2');
SELECT Registra_VENTA_f('3', '3');
SELECT Registra_VENTA_f('4', '4');
SELECT Registra_VENTA_f('5', '5');
SELECT Registra_VENTA_f('6', '6');
SELECT Registra_VENTA_f('7', '7');
SELECT Registra_VENTA_f('8', '8');
SELECT Registra_VENTA_f('9', '9');
SELECT Registra_VENTA_f('10', '10');
SELECT Registra_VENTA_f('11', '11');
SELECT Registra_VENTA_f('12', '12');
SELECT Registra_VENTA_f('13', '13');
SELECT Registra_VENTA_f('14', '14');
SELECT Registra_VENTA_f('15', '15');

SELECT Registra_VENTA_e('1', '1');
SELECT Registra_VENTA_e('2', '2');
SELECT Registra_VENTA_e('3', '3');
SELECT Registra_VENTA_e('4', '4');
SELECT Registra_VENTA_e('5', '5');
SELECT Registra_VENTA_e('6', '6');
SELECT Registra_VENTA_e('7', '7');
SELECT Registra_VENTA_e('8', '8');
SELECT Registra_VENTA_e('9', '9');
SELECT Registra_VENTA_e('10', '10');
SELECT Registra_VENTA_e('11', '11');
SELECT Registra_VENTA_e('12', '12');
SELECT Registra_VENTA_e('13', '13');
SELECT Registra_VENTA_e('14', '14');
SELECT Registra_VENTA_e('15', '15');

SELECT Registra_REGISTRA_f('1', '1');
SELECT Registra_REGISTRA_f('2', '2');
SELECT Registra_REGISTRA_f('3', '3');
SELECT Registra_REGISTRA_f('4', '4');
SELECT Registra_REGISTRA_f('5', '5');
SELECT Registra_REGISTRA_f('6', '6');
SELECT Registra_REGISTRA_f('7', '7');
SELECT Registra_REGISTRA_f('8', '8');
SELECT Registra_REGISTRA_f('9', '9');
SELECT Registra_REGISTRA_f('10', '10');
SELECT Registra_REGISTRA_f('11', '11');
SELECT Registra_REGISTRA_f('12', '12');
SELECT Registra_REGISTRA_f('13', '13');
SELECT Registra_REGISTRA_f('14', '14');
SELECT Registra_REGISTRA_f('15', '15');

SELECT Registra_REGISTRA_e('1', '1');
SELECT Registra_REGISTRA_e('2', '2');
SELECT Registra_REGISTRA_e('3', '3');
SELECT Registra_REGISTRA_e('4', '4');
SELECT Registra_REGISTRA_e('5', '5');
SELECT Registra_REGISTRA_e('6', '6');
SELECT Registra_REGISTRA_e('7', '7');
SELECT Registra_REGISTRA_e('8', '8');
SELECT Registra_REGISTRA_e('9', '9');
SELECT Registra_REGISTRA_e('10', '10');
SELECT Registra_REGISTRA_e('11', '11');
SELECT Registra_REGISTRA_e('12', '12');
SELECT Registra_REGISTRA_e('13', '13');
SELECT Registra_REGISTRA_e('14', '14');
SELECT Registra_REGISTRA_e('15', '15');

SELECT Registra_TELEFONO_CLI('1', '1', '525511475863');
SELECT Registra_TELEFONO_CLI('2', '2', '525511028473');
SELECT Registra_TELEFONO_CLI('3', '3', '525511381040');
SELECT Registra_TELEFONO_CLI('4', '4', '525511275853');
SELECT Registra_TELEFONO_CLI('5', '5', '525511528473');
SELECT Registra_TELEFONO_CLI('6', '6', '525511345240');
SELECT Registra_TELEFONO_CLI('7', '7', '525511075863');
SELECT Registra_TELEFONO_CLI('8', '8', '525511608473');
SELECT Registra_TELEFONO_CLI('9', '9', '525511081940');
SELECT Registra_TELEFONO_CLI('10', '10', '525511575863');
SELECT Registra_TELEFONO_CLI('11', '11', '525511522473');
SELECT Registra_TELEFONO_CLI('12', '12', '525511355240');
SELECT Registra_TELEFONO_CLI('13', '13', '525511405863');
SELECT Registra_TELEFONO_CLI('14', '14', '525511628473');
SELECT Registra_TELEFONO_CLI('15', '15', '525511311040');
SELECT Registra_TELEFONO_CLI('16', '16', '525515275863');

SELECT Registra_CORREO_CLI('1', '1', 'Ma_Lopez@gmail.com');
SELECT Registra_CORREO_CLI('2', '2', 'Gu_Ortiz@gmail.com');
SELECT Registra_CORREO_CLI('3', '3', 'Al_Garcia@gmail.com');
SELECT Registra_CORREO_CLI('4', '4', 'Ca_Herrera@gmail.com');
SELECT Registra_CORREO_CLI('5', '5', 'An_Diaz@gmail.com');
SELECT Registra_CORREO_CLI('6', '6', 'Ri_Castañeda@gmail.com');
SELECT Registra_CORREO_CLI('7', '7', 'Mo_Sierra@gmail.com');
SELECT Registra_CORREO_CLI('8', '8', 'Le_Tamayo@gmail.com');
SELECT Registra_CORREO_CLI('9', '9', 'Fe_Madero@gmail.com');
SELECT Registra_CORREO_CLI('10', '10', 'Ve_Luna@gmail.com');
SELECT Registra_CORREO_CLI('11', '11', 'Iv_Guerrero@gmail.com');
SELECT Registra_CORREO_CLI('12', '12', 'Fr_Perez@gmail.com');
SELECT Registra_CORREO_CLI('13', '13', 'Je_Valdez@gmail.com');
SELECT Registra_CORREO_CLI('14', '14', 'Ma_Reyes@gmail.com');
SELECT Registra_CORREO_CLI('15', '15', 'Vi_Becerra@gmail.com');
SELECT Registra_CORREO_CLI('16', '16', 'Sa_Sosa@gmail.com');

SELECT Registra_area('1', '1');
SELECT Registra_area('2', '2');
SELECT Registra_area('3', '3');
SELECT Registra_area('4', '4');
SELECT Registra_area('5', '1');
SELECT Registra_area('6', '2');
SELECT Registra_area('7', '3');
SELECT Registra_area('8', '4');
SELECT Registra_area('9', '1');
SELECT Registra_area('10', '2');
SELECT Registra_area('11', '3');
SELECT Registra_area('12', '4');
SELECT Registra_area('13', '1');
SELECT Registra_area('14', '2');
SELECT Registra_area('15', '3');
SELECT Registra_area('16', '4');
