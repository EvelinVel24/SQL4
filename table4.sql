-- 1. Inserte los datos de una empresa
INSERT INTO EMPRESA (IdEmpresa, NombreEmpresa) 
VALUES (1, 'Arriendo Herramientas S.A.');

-- 2. Inserte 5 herramientas
INSERT INTO HERRAMIENTA (IdHerramienta, NombreHerramienta, PrecioDia) 
VALUES (1, 'Martillo', 15),
       (2, 'Taladro', 20),
       (3, 'Sierra', 25),
       (4, 'Llave Inglesa', 10),
       (5, 'Destornillador', 5);

-- 3. Inserte 3 clientes
INSERT INTO CLIENTE (IdCliente, Nombre, Correo, Direccion, RUT, Celular)
VALUES (1, 'Pedro Pérez', 'pedro@mail.com', 'Calle 1', '11111111-1', '123456789'),
       (2, 'Ana García', 'ana@mail.com', 'Calle 2', '22222222-2', '987654321'),
       (3, 'Luis Fernández', 'luis@mail.com', 'Calle 3', '33333333-3', '555555555');

-- 4. Elimina el último cliente
DELETE FROM CLIENTE 
WHERE IdCliente = 3;

-- 5. Elimina la primera herramienta
DELETE FROM HERRAMIENTA 
WHERE IdHerramienta = 1;

-- 6. Inserte 2 arriendos para cada cliente
INSERT INTO ARRIENDO (IdArriendo, Fecha, IdCliente, IdHerramienta, ValorDia)
VALUES (1, '2023-08-01', 1, 2, 20),
       (2, '2023-08-02', 1, 3, 25),
       (3, '2023-08-01', 2, 4, 10),
       (4, '2023-08-02', 2, 5, 5);

-- 7. Modifique el correo electrónico del primer cliente
UPDATE CLIENTE 
SET Correo = 'pedroperez@mail.com' 
WHERE IdCliente = 1;

-- 8. Liste todas las herramientas
SELECT * FROM HERRAMIENTA;

-- 9. Liste los arriendos del segundo cliente
SELECT * FROM ARRIENDO 
WHERE IdCliente = 2;

-- 10. Liste los clientes cuyo nombre contenga una "a"
SELECT * FROM CLIENTE 
WHERE Nombre LIKE '%a%';

-- 11. Obtenga el nombre de la segunda herramienta insertada
SELECT NombreHerramienta FROM HERRAMIENTA 
WHERE IdHerramienta = 2;

-- 12. Modifique los primeros 2 arriendos insertados con fecha '15/01/2020'
UPDATE ARRIENDO 
SET Fecha = '2020-01-15' 
WHERE IdArriendo IN (1, 2);

-- 13. Liste Folio, Fecha y ValorDia de los arriendos de enero del 2020
SELECT IdArriendo, Fecha, ValorDia 
FROM ARRIENDO 
WHERE Fecha LIKE '2020-01%';
