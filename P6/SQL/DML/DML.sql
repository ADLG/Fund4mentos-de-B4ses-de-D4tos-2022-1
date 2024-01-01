--Aqui empiezan los insert's

INSERT INTO vivero VALUES ('1','Vivero El SOL','11/04/2012');
INSERT INTO vivero VALUES ('2','Vivero LA LUNA ','17/08/2013');
INSERT INTO vivero VALUES ('3','Vivero ESTRELLA','01/03/2014');


INSERT INTO registro VALUES ('1', 'Registro 1', 'Planta africana', '11/04/2012', '10/04/2012', '09/04/2012', '09/04/2012');
INSERT INTO registro VALUES ('2', 'Registro 2', 'Cactus', '12/04/2012', '08/04/2012', '15/08/2013', '15/08/2013');
INSERT INTO registro VALUES ('3', 'Registro 3', 'Planta africana', '12/04/2012', '10/04/2012', '27/02/2014', '27/02/2014');


INSERT INTO empleado VALUES ('1', 'Federico', 'Acuña', 'Uribe', '04/08/1984', '36 Arbol, Alvaro Obregon, CDMX, 01160', '8000');
INSERT INTO empleado VALUES ('2', 'Jose Alejandro', 'Bonilla', 'Leyva', '13/06/1984', '74 Tlaxcala, Alvaro Obregon, CDMX', '8000');
INSERT INTO empleado VALUES ('3', 'Kimberly', 'Diaz', 'Rojas', '22/11/1992', '192 Cerro Azul, Azcapotzalco, CDMX', '8000');


INSERT INTO Rol VALUES ('1', 'Gerente Vivero');
INSERT INTO Rol VALUES ('2', 'Cuidador de Plantas');
INSERT INTO Rol VALUES ('4', 'Cajero');


INSERT INTO Semillas VALUES ('1', 'F1', '07/04/2010', '50');
INSERT INTO Semillas VALUES ('2', 'F2', '14/08/2011', '70');
INSERT INTO Semillas VALUES ('3', 'F2', '23/02/2012', '60');


INSERT INTO Semillas_Germinadas
VALUES ('1', 'America', '07/08/2010', '40', '05/02/2011', '07/02/2011', '07/02/2011');
INSERT INTO Semillas_Germinadas
VALUES ('2', 'Africa', '14/12/2011', '60', '12/06/2012', '10/06/2012', '10/06/2012');
INSERT INTO Semillas_Germinadas
VALUES ('3', 'Africa', '23/06/2012', '50', '23/10/2012', '20/02/2013', '20/02/2013');


INSERT INTO Plantas
VALUES ('1', 'C1', '09/03/2011', '17/08/2010', '149.99', '40');
INSERT INTO Plantas
VALUES ('2', 'A1', '14/07/2012', '24/12/2011', '99.99', '70');
INSERT INTO Plantas
VALUES ('3', 'A2', '25/11/2012', '03/07/2012', '99.99', '60');


INSERT INTO Tipo_de_Planta
VALUES ('1', 'Cactus', 'Euphorbia', 'Fumigar 1 vez cada 6 meses, evitar el agua en exceso', 'arena, tierra negra y perlita');
INSERT INTO Tipo_de_Planta
VALUES ('2', 'Violeta Africana', 'Saintpaulia', 'ambiente arriba de 5°, mantener humeda, no exceso de agua', 'arena, turba y mantillo');
INSERT INTO Tipo_de_Planta
VALUES ('3', 'Violeta Africana', 'Saintpaulia', 'ambiente arriba de 5°, mantener humeda, no exceso de agua', 'arena, turba y mantillo');


INSERT INTO VENTAS_ELECTRONICAS
VALUES ('1', 'Maura', 'Marin', 'Lopez', '24 C. Saltillo, Nezahualcóyotl, Estado de Mexico', '20/04/2012', '1', 'Cactus Euphorbia ', '149.99', '150.00', 'Tarjeta de Debito', '1');
INSERT INTO VENTA_FISICA
VALUES ('1', '99.99', '1', 'Violeta Africana', 'Jose Bonilla', '1', 'Jose Bonilla', '2');
INSERT INTO VENTA_FISICA
VALUES ('2', '99.99', '1', 'Violeta Africana', 'Kimberly Diaz', '1', 'Kimberly Diaz', '3');


INSERT INTO CLIENTE
VALUES ('1', 'Maura', 'Marin', 'Lopez', '20/01/1998', '24 C. Saltillo, Nezahualcóyotl, Estado de Mexico');
INSERT INTO CLIENTE
VALUES ('2', 'Guillermo Daniel', 'Ortega', 'Ortiz', '06/04/1975', '20 Aguascalientes, Ecatepec de Morelos, Estado de México');
INSERT INTO CLIENTE
VALUES ('3', 'Alberto', 'Gonzalez', 'Garcia', '25/05/2000', '75 Serafín Olarte, Ciudad de México, Cd. de México');


INSERT INTO Pago_e VALUES ('1', 'Tarjeta de Debito');
INSERT INTO Pago_f VALUES ('1', 'Efectivo');
INSERT INTO Pago_f VALUES ('2', 'Efectivo');

INSERT INTO TELEFONO_VIV VALUES ('1', '1', '525534456710');
INSERT INTO TELEFONO_VIV VALUES ('2', '2', '525554769811');
INSERT INTO TELEFONO_VIV VALUES ('3', '3', '525536487990');


INSERT INTO DIRECCION_VIV VALUES ('1', '1', '20 Cam. Real, Xochimilco, Cd. de México');
INSERT INTO DIRECCION_VIV VALUES ('2', '2', '128 Pachuca, Chapultepec, Cd. de México');
INSERT INTO DIRECCION_VIV VALUES ('3', '3', '82 C. de Venustiano Carranza, Venustiano Carranza, Cd. de México');


INSERT INTO REGISTRAR VALUES ('1', '1');
INSERT INTO REGISTRAR VALUES ('2', '2');
INSERT INTO REGISTRAR VALUES ('3', '3');


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
INSERT INTO TIENE_EMP VALUES ('3', '4');


INSERT INTO Controlar VALUES ('1', '1');
INSERT INTO Controlar VALUES ('2', '2');
INSERT INTO Controlar VALUES ('3', '3');


INSERT INTO Germinado VALUES ('1', '1');
INSERT INTO Germinado VALUES ('2', '2');
INSERT INTO Germinado VALUES ('3', '3');


INSERT INTO TIENE_PLA VALUES ('1', '1');
INSERT INTO TIENE_PLA VALUES ('2', '2');
INSERT INTO TIENE_PLA VALUES ('3', '3');


INSERT INTO VENTA_e VALUES ('1', '1');
INSERT INTO VENTA_f VALUES ('2', '1');
INSERT INTO VENTA_f VALUES ('3', '2');


INSERT INTO REGISTRA_e VALUES ('1', '1');
INSERT INTO REGISTRA_f VALUES ('1', '1');
INSERT INTO REGISTRA_f VALUES ('2', '2');


INSERT INTO COMPRAR_tipo_e VALUES ('1', '1');
INSERT INTO COMPRAR_tipo_f VALUES ('1', '1');
INSERT INTO COMPRAR_tipo_f VALUES ('2', '2');


INSERT INTO TELEFONO_CLI VALUES ('1', '1', '525513475863');
INSERT INTO TELEFONO_CLI VALUES ('2', '2', '525541628473');
INSERT INTO TELEFONO_CLI VALUES ('3', '3', '525519381940');


INSERT INTO CORREO_CLI VALUES ('1', '1', 'MM_Lopez@gmail.com');
INSERT INTO CORREO_CLI VALUES ('2', '2', 'GD_Ortiz@gmail.com');
INSERT INTO CORREO_CLI VALUES ('3', '3', 'AG_Garcia@gmail.com');


--Aqui empiezan las update's

INSERT INTO vivero VALUES ('4','Vivero SQUARE','05/03/1000');
UPDATE vivero SET Fecha_de_apertura = '05/07/2011' WHERE Id_Vivero = '4';

INSERT INTO registro VALUES ('4', 'Registro 4', 'Planta Australiana', '04/02/2015', '02/02/2015', '01/01/2016', '01/01/2016');
UPDATE registro SET Genero = 'Planta africana' WHERE Id_Registro = '4';

INSERT INTO empleado VALUES ('4', 'Nadia Vanesa', 'Torres', 'Martinez', '23/09/1996', 'NULL', '8000');
UPDATE empleado SET Direccion = '201 Democracias, Azcapotzalco, CDMX' WHERE Id_Empleado = '4';

INSERT INTO Rol VALUES ('3', 'Exterminador de Plantas');
UPDATE Rol SET Tipo_de_Rol = 'Encargado de mostrar de Plantas' WHERE Id_Rol = '3';

INSERT INTO Semillas VALUES ('4', 'F1', '23/02/1000', '20');
UPDATE Semillas SET Fecha_de_polinizacion = '23/04/2015' WHERE Id_Semillas = '4';

INSERT INTO Semillas_Germinadas VALUES ('4', 'Cactus', '23/06/2012', '50', '23/10/2012', '20/02/1993', '20/02/2013');
UPDATE Semillas_Germinadas SET Ultimo_fertilizante = '20/02/2013' WHERE Id_Semillas_Germinadas = '4';

INSERT INTO Plantas VALUES ('4', 'NULL', '09/03/2011', '17/08/2010', '149.99', '60');
UPDATE Plantas SET Nombre = 'C2' WHERE Id_Planta = '4';

INSERT INTO Tipo_de_Planta VALUES ('4', 'Cactus', 'Euphorbia', 'Fumigar 1 vez cada 6 meses, evitar el agua en exceso', 'NULL');
UPDATE Tipo_de_Planta SET Tipo_de_sustrato = 'arena, tierra negra y perlita' WHERE Id_Tipo_de_Planta = '4';

INSERT INTO VENTAS_ELECTRONICAS VALUES ('2', 'Marzin', 'Gonzalez', 'Lopez', '181 Ote. 146, Ciudad de México, Cd. de México', '01/05/2090', '1', 'Cactus Euphorbia ', '149.99', '150.00', 'Tarjeta de Credito', '1');
UPDATE VENTAS_ELECTRONICAS SET Nombre = 'Martin' WHERE Id_Ventas_electronicas = '2';

INSERT INTO CLIENTE VALUES ('4', 'Martin', 'Gonzalez', 'Lopez', '01/05/2090', '181 Ote. 146, Ciudad de México, Cd. de México');
UPDATE CLIENTE SET Fecha_de_nacimiento = '01/05/2011' WHERE Id_Cliente = '4';

INSERT INTO Pago_e VALUES ('2', 'Efectivo');
UPDATE Pago_e SET Tipo_de_pago = 'Tarjeta de Credito' WHERE Id_Pago_e = '2';

INSERT INTO TELEFONO_VIV VALUES ('4', '1', '52550');
UPDATE TELEFONO_VIV SET Telefono = '525500291310' WHERE Id_Vivero = '4';

INSERT INTO DIRECCION_VIV VALUES ('4', '4', '8, Cd. de México');
UPDATE DIRECCION_VIV SET Direccion = '8 Gobierno del Distrito, Ignacio Zaragoza, Cd. de Mexico' WHERE Id_Vivero = '4';

INSERT INTO REGISTRAR VALUES ('4', '3');
UPDATE REGISTRAR SET Id_Registro = '4' WHERE Id_Vivero = '4';

INSERT INTO TRABAJAR VALUES ('4', '1');
UPDATE TRABAJAR SET Id_Empleado = '4' WHERE Id_Vivero = '4';

INSERT INTO TELEFONO_EMP VALUES ('4', '4', '5250');
UPDATE TELEFONO_EMP SET Telefono = '525500631310' WHERE Id_Empleado = '4';

INSERT INTO CORREO_EMP VALUES ('4', '4', 'asdf@gmail.com');
UPDATE CORREO_EMP SET Correo = 'NV_Martinez@gmail.com' WHERE Id_Empleado = '4';

INSERT INTO TIENE_EMP VALUES ('4', '1');
UPDATE TIENE_EMP SET Id_Rol = '3' WHERE Id_Empleado = '4';

INSERT INTO Controlar VALUES ('4', '1');
UPDATE Controlar SET Id_Semillas = '4' WHERE Id_Empleado = '4';

INSERT INTO Germinado VALUES ('4', '1');
UPDATE Germinado SET Id_Semillas_Germinadas = '4' WHERE Id_Semillas = '4';

INSERT INTO TIENE_PLA VALUES ('4', '1');
UPDATE TIENE_PLA SET Id_Planta = '4' WHERE Id_Vivero = '4';

INSERT INTO VENTA_e VALUES ('4', '1');
UPDATE VENTA_e SET Id_Ventas_electronicas = '2' WHERE Id_Vivero = '4';

INSERT INTO REGISTRA_e VALUES ('2', '1');
UPDATE REGISTRA_e SET Id_Pago_e = '2' WHERE Id_Ventas_electronicas = '2';

INSERT INTO COMPRAR_tipo_e VALUES ('2', '1');
UPDATE COMPRAR_tipo_e SET Id_Cliente = '2' WHERE Id_Ventas_electronicas = '2';

INSERT INTO TELEFONO_CLI VALUES ('4', '1', '5519281140');
UPDATE TELEFONO_CLI SET Telefono = '525519281140' WHERE Id_Cliente = '4';

INSERT INTO CORREO_CLI VALUES ('4', '1', 'M_LLopez@gmail.com');;
UPDATE CORREO_CLI SET Correo = 'MG_Lopez@gmail.com' WHERE Id_Cliente = '4';



--Aqui empiezan los delete's, se pueden ejecutar 1 por 1.

DELETE FROM TELEFONO_VIV WHERE Id_Vivero = '4'

DELETE FROM DIRECCION_VIV WHERE Id_Vivero = '4'

DELETE FROM REGISTRAR WHERE Id_Vivero = '4'

DELETE FROM TRABAJAR WHERE Id_Empleado = '4'

DELETE FROM TELEFONO_EMP WHERE Id_Empleado = '4'

DELETE FROM CORREO_EMP WHERE Id_Empleado = '4'

DELETE FROM TIENE_EMP WHERE Id_Empleado = '4'

DELETE FROM Controlar WHERE Id_Empleado = '4'

DELETE FROM Germinado WHERE Id_Semillas = '4'

DELETE FROM TIENE_PLA WHERE Id_Vivero = '4'

DELETE FROM VENTA_e WHERE Id_Vivero = '4'

DELETE FROM REGISTRA_e WHERE Id_Ventas_electronicas = '2'

DELETE FROM COMPRAR_tipo_e WHERE Id_Ventas_electronicas = '2'

DELETE FROM TELEFONO_CLI WHERE Id_Cliente = '4'

DELETE FROM CORREO_CLI WHERE Id_Cliente = '4'

DELETE FROM vivero WHERE Id_Vivero = '4'

DELETE FROM registro WHERE Id_Registro = '4'

DELETE FROM empleado WHERE Id_Empleado = '4'

DELETE FROM Rol WHERE Id_Rol = '3'

DELETE FROM Semillas WHERE Id_Semillas = '4'

DELETE FROM Semillas_Germinadas WHERE Id_Semillas_Germinadas = '4'

DELETE FROM Plantas WHERE Id_Planta = '4'

DELETE FROM Tipo_de_Planta WHERE Id_Tipo_de_Planta = '4'

DELETE FROM VENTAS_ELECTRONICAS WHERE Id_Ventas_electronicas = '2'

DELETE FROM CLIENTE WHERE Id_Cliente = '4'

DELETE FROM Pago_e WHERE Id_Pago_e = '2'


--Aqui empiezan las 3 consultas

SELECT nombre FROM Vivero

SELECT nombre, Apellido_Paterno, Apellido_Materno FROM Empleado

SELECT Id_Semillas, Cantidad_de_semillas FROM Semillas