--Disparadores:
-- 1. Disparador que encarga de validar que cuando una venta tenga el estatus de pagada.
CREATE FUNCTION Valida_Venta() RETURNS trigger AS $$
BEGIN
	IF new.Id_Cliente = (select Id_Cliente from comprar_tipo_f)
	THEN new.Id_Cliente = (select Id_Cliente from venta_fisica_r1);
END IF;
	RETURN NULL;
END;
$$
Language 'plpgsql';

CREATE TRIGGER T_Valida_Venta AFTER INSERT on venta_fisica_r1
FOR EACH ROW EXECUTE PROCEDURE Valida_Venta();
COMMENT ON FUNCTION Valida_Venta() IS
'Funcion que valida que una cuenta este pagada.'

-- 2. Disparador que se encarga de guardar la fecha en que se realiza el pago de una venta.
CREATE FUNCTION Guarda_Fecha() RETURNS trigger AS $$
BEGIN
	IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE' ) THEN
	new.Fecha_Venta_f = current_date;
	RETURN new;
	ELSEIF (TG_OP = 'DELETE') THEN
	RETURN NULL;
	END IF;
END;
$$
Language 'plpgsql';

CREATE TRIGGER T_Guarda_Fecha BEFORE INSERT on venta_fisica_r1
FOR EACH ROW EXECUTE PROCEDURE Guarda_Fecha();
COMMENT ON FUNCTION Guarda_Fecha() IS
'Funcion que guarda la fecha actual.'

-- 3. Disparador que se encarga de validar que un empleado no pueda realizar mas de 35 ventas al día.
CREATE FUNCTION Valida_Venta_Empleado() RETURNS trigger AS $$
BEGIN
	IF (select count(Id_Empleado_que_ayudo_a_cliente) from venta_fisica_r1) > 35
	THEN RAISE EXCEPTION 'El empleado ya ha superado las 35 ventas diarias';
	END IF;
	RETURN NULL;
END;
$$
Language 'plpgsql';

CREATE TRIGGER T_Valida_Venta_Empleado AFTER INSERT on venta_fisica_r1
FOR EACH ROW EXECUTE PROCEDURE Valida_Venta_Empleado();
COMMENT ON FUNCTION Valida_Venta_Empleado() IS
'Funcion que valida que un empleado no pueda realizar mas de 35 ventas diarias.'

-- 4. Diparador que se encarga de validar que la fecha de apartura de un vivero no sea menor al año 2000.
CREATE FUNCTION Valida_Fecha_Vivero() RETURNS trigger AS $$
BEGIN
	IF new.fecha_de_apertura > '01/01/2000'
	THEN INSERT INTO vivero VALUES(new.Id_Vivero,new.Nombre,new.Fecha_de_apertura);
	ELSEIF new.fecha_de_apertura < '31/12/1999'
	THEN RAISE EXCEPTION 'Esta fecha no puede ser insertada, inserte una fecha valida';
END IF;
	RETURN NULL;
END;
$$
Language 'plpgsql';

CREATE TRIGGER T_Valida_Fecha_Vivero AFTER INSERT on vivero
FOR EACH ROW EXECUTE PROCEDURE Valida_Fecha_Vivero();
COMMENT ON FUNCTION Valida_Fecha_Vivero() IS
'Funcion que valida que la fecha de un vivero no sea de años anteriores al año 2000.'


-- 5. Disparador que se encarga de validar que no haya mas de 500 plantas en el almacén.
CREATE FUNCTION Valida_Cantidad_plantas() RETURNS trigger AS $$
BEGIN
	IF (select sum(numero_de_plantas) from plantas_R2) > 500
	THEN RAISE EXCEPTION 'No hay espacio para mas de 500 plantas en el almacén';
	END IF;
	RETURN NULL;
END;
$$
Language 'plpgsql';

CREATE TRIGGER T_Valida_Cantidad_plantas AFTER INSERT on plantas_R2
FOR EACH ROW EXECUTE PROCEDURE Valida_Cantidad_plantas();
COMMENT ON FUNCTION Valida_Cantidad_plantas() IS
'Funcion que valida que no haya mas de 500 plantas en almacén.'
