--Aqui empiezan los insert's

INSERT INTO vivero VALUES ('1','Vivero El SOL','11/04/2000');
INSERT INTO vivero VALUES ('2','Vivero LA LUNA ','17/08/2001');
INSERT INTO vivero VALUES ('3','Vivero ESTRELLA','01/03/2002');


INSERT INTO registro VALUES ('1', 'Registro 1', 'Planta africana', '11/04/2000', '10/04/2000', '09/04/2000', '09/04/2000');
INSERT INTO registro VALUES ('2', 'Registro 2', 'Cactus', '12/04/2000', '08/04/2000', '15/08/2001', '15/08/2001');
INSERT INTO registro VALUES ('3', 'Registro 3', 'Planta africana', '12/04/2000', '10/04/2000', '27/02/2002', '27/02/2002');


INSERT INTO empleado VALUES ('1', 'Federico', 'Acuña', 'Uribe', '04/08/1984', '36 Arbol, Alvaro Obregon, CDMX, 01160', '8000', '11/04/2000');
INSERT INTO empleado VALUES ('2', 'Jose Alejandro', 'Bonilla', 'Leyva', '13/06/1984', '74 Tlaxcala, Alvaro Obregon, CDMX', '8000', '17/08/2001');
INSERT INTO empleado VALUES ('3', 'Kimberly', 'Diaz', 'Rojas', '22/11/1992', '192 Cerro Azul, Azcapotzalco, CDMX', '8000', '01/03/2002');


INSERT INTO Rol VALUES ('1', 'Gerente Vivero');
INSERT INTO Rol VALUES ('2', 'Cuidador de Plantas');
INSERT INTO Rol VALUES ('4', 'Cajero');


INSERT INTO Semillas VALUES ('1', 'F1', '07/04/1998', '50');
INSERT INTO Semillas VALUES ('2', 'F2', '14/08/1999', '70');
INSERT INTO Semillas VALUES ('3', 'F2', '23/02/2000', '60');


INSERT INTO Semillas_Germinadas
VALUES ('1', 'America', '07/08/1998', '40', '05/02/1999', '07/02/1999', '07/02/1999');
INSERT INTO Semillas_Germinadas
VALUES ('2', 'Africa', '14/12/1999', '60', '12/06/2000', '10/06/2000', '10/06/2000');
INSERT INTO Semillas_Germinadas
VALUES ('3', 'Africa', '23/06/2000', '50', '23/10/2000', '20/02/2001', '20/02/2001');


INSERT INTO Plantas
VALUES ('1', 'C1', '09/03/1999', '17/08/1998', '149.99', '40');
INSERT INTO Plantas
VALUES ('2', 'A1', '14/07/2000', '24/12/1999', '99.99', '70');
INSERT INTO Plantas
VALUES ('3', 'A2', '25/11/2000', '03/07/2000', '99.99', '60');


INSERT INTO Tipo_de_Planta
VALUES ('1', 'Cactus', 'Euphorbia', 'Fumigar 1 vez cada 6 meses, evitar el agua en exceso', 'arena, tierra negra y perlita');
INSERT INTO Tipo_de_Planta
VALUES ('2', 'Violeta Africana', 'Saintpaulia', 'ambiente arriba de 5°, mantener humeda, no exceso de agua', 'arena, turba y mantillo');
INSERT INTO Tipo_de_Planta
VALUES ('3', 'Violeta Africana', 'Saintpaulia', 'ambiente arriba de 5°, mantener humeda, no exceso de agua', 'arena, turba y mantillo');


INSERT INTO VENTAS_ELECTRONICAS
VALUES ('1', '01/03/2002','Maura', 'Marin', 'Lopez', '24 C. Saltillo, Nezahualcóyotl, Estado de Mexico', '20/04/2000', '1', 'Cactus Euphorbia ', '149.99', '150.00', 'Tarjeta de Debito', '1');
INSERT INTO VENTA_FISICA
VALUES ('1', '11/04/2000','99.99', '1', 'Violeta Africana', '2', '1', 'Jose Bonilla', 'Efectivo','2');
INSERT INTO VENTA_FISICA
VALUES ('2', '17/08/2001','99.99', '1', 'Violeta Africana', '3', '1', 'Kimberly Diaz', 'Efectivo','3');
INSERT INTO VENTA_FISICA
VALUES ('3', '02/03/2002','99.99', '1', 'Violeta Africana', '2', '1', 'Jose Bonilla', 'Efectivo','1');


INSERT INTO CLIENTE
VALUES ('1', 'Maura', 'Marin', 'Lopez', '20/01/1998', '24 C. Saltillo, Nezahualcóyotl, Estado de Mexico');
INSERT INTO CLIENTE
VALUES ('2', 'Guillermo Daniel', 'Ortega', 'Ortiz', '06/04/1975', '20 Aguascalientes, Ecatepec de Morelos, Estado de México');
INSERT INTO CLIENTE
VALUES ('3', 'Alberto', 'Gonzalez', 'Garcia', '25/05/2000', '75 Serafín Olarte, Ciudad de México, Cd. de México');


INSERT INTO Pago_e VALUES ('1', 'Tarjeta de Debito');
INSERT INTO Pago_f VALUES ('1', 'Efectivo');
INSERT INTO Pago_f VALUES ('2', 'Efectivo');
INSERT INTO Pago_f VALUES ('3', 'Efectivo');

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
INSERT INTO VENTA_f VALUES ('1', '3');

INSERT INTO REGISTRA_e VALUES ('1', '1');
INSERT INTO REGISTRA_f VALUES ('1', '1');
INSERT INTO REGISTRA_f VALUES ('2', '2');
INSERT INTO REGISTRA_f VALUES ('3', '3');

INSERT INTO COMPRAR_tipo_e VALUES ('1', '1');
INSERT INTO COMPRAR_tipo_f VALUES ('1', '1');
INSERT INTO COMPRAR_tipo_f VALUES ('2', '2');
INSERT INTO COMPRAR_tipo_f VALUES ('3', '1');


INSERT INTO TELEFONO_CLI VALUES ('1', '1', '525513475863');
INSERT INTO TELEFONO_CLI VALUES ('2', '2', '525541628473');
INSERT INTO TELEFONO_CLI VALUES ('3', '3', '525519381940');


INSERT INTO CORREO_CLI VALUES ('1', '1', 'MM_Lopez@gmail.com');
INSERT INTO CORREO_CLI VALUES ('2', '2', 'GD_Ortiz@gmail.com');
INSERT INTO CORREO_CLI VALUES ('3', '3', 'AG_Garcia@gmail.com');
