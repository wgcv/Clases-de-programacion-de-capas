SELECT nombre,direccion FROM empleados where direccion = 'sur' and sexo = 'f'

SELECT nombre, telefono, sueldo from empleados where sueldo>1000

SELECT nombre, telefono, sueldo, direccion from empleados where sueldo>1000 and direccion = 'norte'

SELECT nombre, edad, sueldo from empleados where edad >30

SELECT nombre, edad, sueldo from empleados where edad >20 and sexo = 'f'

SELECT * from empleados

INSERT INTO empleados (nombre, direccion, telefono, sexo, sueldo, edad, estado)  VALUES ('ROSA CAMPOVERDE', 'SUR', 313413423, 'F', 1900, 32, 'A')

INSERT INTO empleados (nombre, direccion, telefono, sexo, sueldo, edad, estado)  VALUES ('CRISTIAN PENILLA', 'NORTE', 313413423, 'M', 1900, 32, 'A')

UPDATE empleados SET sueldo = 1000 WHERE sueldo <1000

UPDATE empleados set estado = 'I' where direccion = 'sur'
SELECT * from empleados where estado = 'A'

DELETE FROM empleados where direccion = 'NORTE'

DELETE FROM empleados where estado = 'I'