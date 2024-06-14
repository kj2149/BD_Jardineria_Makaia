INSERT INTO cliente (codigo_cliente, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion1, direccion2, ciudad, region, pais, codigo_postal, codigo_empleado, limite_credito) 
VALUES
(1, 'Acme Corporation', 'Andrea', 'Martínez', '123456789', '987654321', 'Calle 123', 'Piso 1', 'Medellín', 'Antioquia', 'Colombia', '05001', 3, 10000.00),
(2, 'Beta Enterprises', 'Juan', 'González', '234567890', '876543219', 'Av. Principal', 'Piso 2', 'Buenos Aires', 'Buenos Aires', 'Argentina', '1001', 4, 20000.00),
(3, 'Gamma Corporation', 'María', 'López', '345678901', '765432198', 'Rua Principal', 'Apto 3', 'São Paulo', 'São Paulo', 'Brasil', '01000-000', 5, 30000.00),
(4, 'Delta Group', 'Carlos', 'Rodríguez', '456789012', '654321987', 'Av. Principal', 'Suite 4', 'Lima', 'Lima', 'Perú', '15001', 6, 40000.00),
(5, 'Echo Partners', 'Laura', 'Fernández', '567890123', '543219876', 'Calle Principal', 'Oficina 5', 'Santiago', 'Región Metropolitana', 'Chile', '8320000', 7, 50000.00),
(6, 'Foxtrot Inc.', 'Pedro', 'Díaz', '678901234', '432198765', 'Av. Principal', 'Piso 6', 'Ciudad de México', 'CDMX', 'México', '01001', 8, 60000.00),
(7, 'Giga Enterprises', 'Ana', 'Gómez', '789012345', '321987654', 'Calle Principal', 'Piso 7', 'Madrid', 'Madrid', 'España', '28001', 9, 70000.00),
(8, 'Hive Solutions', 'Luis', 'Ruiz', '890123456', '219876543', 'Carrera Principal', 'Piso 8', 'Bogotá', 'Cundinamarca', 'Colombia', '110111', 10, 80000.00),
(9, 'Innova Group', 'Elena', 'Martínez', '901234567', '198765432', 'Baker Street', 'Piso 9', 'Londres', 'Londres', 'Reino Unido', 'EC1A 1BB', 11, 90000.00),
(10, 'Jupiter Corp.', 'Javier', 'Gutiérrez', '012345678', '987654321', 'Rue Principal', 'Suite 10', 'París', 'Île-de-France', 'Francia', '75001', 12, 100000.00),
(11, 'Kappa Holdings', 'Sara', 'López', '123456789', '876543210', '5th Avenue', 'Piso 11', 'Nueva York', 'Nueva York', 'Estados Unidos', '10001', 13, 110000.00),
(12, 'Lambda Ltd.', 'Diego', 'Sánchez', '234567890', '765432109', 'Yonge Street', 'Piso 12', 'Toronto', 'Ontario', 'Canadá', 'M5B 1R4', 14, 120000.00),
(13, 'Mega Solutions', 'Marta', 'Martínez', '345678901', '654321098', 'Shibuya', 'Apto 13', 'Tokio', 'Kantō', 'Japón', '100-0002', 15, 130000.00),
(14, 'Nexus Group', 'Manuel', 'García', '456789012', '543210987', 'Alexanderplatz', 'Piso 14', 'Berlín', 'Berlín', 'Alemania', '10115', 1, 140000.00),
(15, 'Omega Corporation', 'Natalia', 'Pérez', '567890123', '432109876', 'Circular Quay', 'Suite 15', 'Sídney', 'Nueva Gales del Sur', 'Australia', '2000', 2, 150000.00),
(16, 'Alfa Corporation', 'Manuel', 'Osorio', '5467623', '43567543', 'Rompongi', 'Suite 20', 'Tokio', 'Minato', 'Japón', '2030', 2, 300000.00);

INSERT INTO pedido (codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado_pedido, comentarios, codigo_cliente) 
VALUES
(56565342, '2016-05-14', '2016-05-14', '2016-05-15', 'En Proceso', 'Pedido urgente', 9),
(87984123, '2021-03-10', '2021-03-10', NULL, 'En Proceso', 'Pedido estándar', 4),
(34561235, '2011-04-02', '2011-04-02', '2011-04-03', 'En Proceso', 'Pedido estándar', 14),
(98654231, '2022-11-20', '2022-11-20', NULL, 'En Proceso', 'Pedido urgente', 3),
(77712345, '2019-06-25', '2019-06-25', '2019-06-26', 'En Proceso', 'Pedido estándar', 6),
(23459876, '2010-03-15', '2010-03-15', NULL, 'En Proceso', 'Pedido urgente', 15),
(44566789, '2014-07-05', '2014-07-05', '2014-07-06', 'En Proceso', 'Pedido urgente', 11),
(12345789, '2024-06-01', '2024-06-01', NULL, 'En Proceso', 'Pedido urgente', 1),
(56432789, '2017-09-30', '2017-09-30', '2017-10-01', 'En Proceso', 'Pedido estándar', 8),
(98761234, '2020-12-05', '2020-12-05', NULL, 'En Proceso', 'Pedido urgente', 5),
(23456789, '2015-08-20', '2015-08-20', '2015-08-21', 'En Proceso', 'Pedido estándar', 10),
(45678901, '2023-08-15', '2023-08-15', NULL, 'En Proceso', 'Pedido estándar', 2),
(89012345, '2012-05-28', '2012-05-28', '2012-05-29', 'En Proceso', 'Pedido urgente', 13),
(67890123, '2024-06-04', '2024-06-04', NULL, 'En Proceso', 'Pedido estándar', 7),
(43218976, '2018-10-18', '2018-10-18', '2018-10-19', 'En Proceso', 'Pedido urgente', 12);

INSERT INTO empleado (codigo_empleado, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_oficina, codigo_jefe, puesto) 
VALUES
(1, 'Juan', 'Perez', 'Gonzalez', '101', 'juan.perez@example.com', 1, 3, 'Gerente'),
(2, 'María', 'García', 'López', '102', 'maria.garcia@example.com', 1, 4, 'Supervisor'),
(3, 'Carlos', 'Martínez', 'Rodríguez', '103', 'carlos.martinez@example.com', 2, 4, 'Vendedor'),
(4, 'Laura', 'Hernández', 'Fernández', '104', 'laura.hernandez@example.com', 2, 2, 'Vendedor'),
(5, 'Pedro', 'Díaz', 'Sánchez', '105', 'pedro.diaz@example.com', 3, 10, 'Asistente de Ventas'),
(6, 'Ana', 'Gómez', 'Ruiz', '106', 'ana.gomez@example.com', 3,11, 'Representante de Ventas'),
(7, 'Luis', 'Ruiz', 'Martínez', '107', 'luis.ruiz@example.com', 4, 12, 'Gerente de Logística'),
(8, 'Elena', 'Fernández', 'Pérez', '108', 'elena.fernandez@example.com', 4, 7, 'Asistente de Logística'),
(9, 'Javier', 'Gutiérrez', 'García', '109', 'javier.gutierrez@example.com', 5, 5, 'Gerente de Finanzas'),
(10, 'Sara', 'López', 'Gómez', '110', 'sara.lopez@example.com', 5, 9, 'Analista Financiero'),
(11, 'Diego', 'Sánchez', 'Hernández', '111', 'diego.sanchez@example.com', 6, 7, 'Gerente de Marketing'),
(12, 'Marta', 'Martínez', 'Díaz', '112', 'marta.martinez@example.com', 6, 11, 'Especialista en Marketing'),
(13, 'Manuel', 'García', 'Rodríguez', '113', 'manuel.garcia@example.com', 7, 3, 'Gerente de Recursos Humanos'),
(14, 'Natalia', 'Pérez', 'Fernández', '114', 'natalia.perez@example.com', 7, 13, 'Especialista de RRHH'),
(15, 'Hugo', 'Fernández', 'Sánchez', '115', 'hugo.fernandez@example.com', 8, 13, 'Gerente de IT');

INSERT INTO empleado (codigo_empleado, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_oficina, codigo_jefe, puesto) 
VALUES 
(16, 'Samuel', 'Cifuentes', 'Toro', '200', 'samuel.cifuentes@example.com', 8, 12, 'Gerente de finanzas');



INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono_oficina, direccion_oficina) 
VALUES
clientecliente(1, 'Medellín', 'Colombia', 'Antioquia', 50021, 1234567890, 'Calle 10 # 20-30'),
(2, 'Buenos Aires', 'Argentina', 'Buenos Aires', 1001, 987654321, 'Av. Corrientes 1234'),
(3, 'São Paulo', 'Brasil', 'São Paulo', 10000, 1029384756, 'Rua Augusta 456'),
(4, 'Lima', 'Perú', 'Lima', 15001, 56473, 'Av. Larco 789'),
(5, 'Santiago', 'Chile', 'Región Metropolitana', 8320000, 192837465, 'Calle Ahumada 345'),
(6, 'Ciudad de México', 'México', 'CDMX', 1000, 83920, 'Av. Reforma 567'),
(7, 'Madrid', 'España', 'Madrid', 28001, 2736, 'Gran Vía 8'),
(8, 'Bogotá', 'Colombia', 'Cundinamarca', 110111, 5647, 'Carrera 7 # 45-67'),
(9, 'Londres', 'Reino Unido', 'Londres', 1015, 27456, 'Baker Street 221B'),
(10, 'París', 'Francia', 'Île-de-France', 75001, 64738291, 'Rue de Rivoli 1'),
(11, 'Nueva York', 'Estados Unidos', 'Nueva York', 10001, 74839, '5th Avenue 350'),
(12, 'Toronto', 'Canadá', 'Ontario', 52113, 10293, 'Yonge Street 10'),
(13, 'Tokio', 'Japón', 'Kantō', 1000001, 12345, 'Shibuya 109'),
(14, 'Berlín', 'Alemania', 'Berlín', 10115, 01928, 'Unter den Linden 50'),
(15, 'Sídney', 'Australia', 'Nueva Gales del Sur', 2000, 564778, 'George Street 60');

INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono_oficina, direccion_oficina) 
VALUES
(16, 'Bogota', 'Colombia', 'Cundinamarca', 110110, 6547321, 'Torre ColPatria'),
(17, 'Medellin', 'Colombia', 'Antioquia', '050001', 650099, 'Edificio Coltejer');


INSERT INTO inventario (codigo_producto, nombre_producto, gama, dimensiones, proveedor, descripcion_producto, cantidad_producto, precio_venta, precio_proveedor) 
VALUES
(1001, 'Lavadora', 'Electrodomésticos', 60, 'ElectroHogar Inc.', 'Lavadora de carga frontal', 20, 499.99, 350.00),
(1002, 'Sofá', 'Muebles', 200, 'ComfortHome Furnishings', 'Sofá de tres plazas', 15, 899.99, 600.00),
(1003, 'Televisor LED', 'Electrónica', 50, 'TechZone Electronics', 'Televisor LED de 55 pulgadas', 30, 799.99, 550.00),
(1004, 'Set de Legos', 'Juguetes', 30, 'KidsToys Corp.', 'Set de construcción de Lego Classic', 50, 49.99, 30.00),
(1005, 'Anillo de diamantes', 'Joyería', 5, 'DiamondsRUs', 'Anillo de compromiso de diamante', 10, 1999.99, 1500.00),
(1006, 'Camisa', 'Ropa', 20, 'FashionGlam', 'Camisa de manga larga para hombres', 100, 29.99, 15.00),
(1007, 'Juego de sábanas', 'Hogar', 10, 'CozyBed Linens', 'Juego de sábanas de algodón de 4 piezas', 40, 39.99, 25.00),
(1008, 'Balón de fútbol', 'Deportes', 25, 'SportsEmpire', 'Balón de fútbol FIFA oficial', 20, 19.99, 10.00),
(1009, 'Sartén antiadherente', 'Cocina', 15, 'KitchenEssentials', 'Sartén antiadherente de 10 pulgadas', 35, 24.99, 15.00),
(1010, 'Libro de ficción', 'Libros', 10, 'BookWorld', 'Novela de fantasía épica', 50, 14.99, 8.00),
(1011, 'Álbum de vinilo', 'Música', 30, 'MusicStore', 'Álbum de vinilo de artista famoso', 25, 24.99, 18.00),
(1012, 'Podadora de césped', 'Jardinería', 100, 'GreenGarden Supplies', 'Podadora de césped eléctrica', 10, 149.99, 100.00),
(1013, 'Maquillaje', 'Belleza', 5, 'BeautyEmporium', 'Paleta de maquillaje profesional', 20, 49.99, 30.00),
(1014, 'Aceite de motor', 'Automóviles', 20, 'AutoParts Central', 'Aceite de motor sintético 5W-30', 30, 29.99, 20.00),
(1015, 'Aspiradora', 'Electrodomésticos', 40, 'CleanHome Appliances', 'Aspiradora vertical sin bolsa', 15, 129.99, 90.00);

INSERT INTO gamas_productos (gama, descripcion_gama, imagen) 
VALUES
('Electrodomésticos', 'Productos electrónicos para el hogar', NULL),
('Muebles', 'Muebles para decoración de interiores', NULL),
('Electrónica', 'Productos electrónicos diversos', NULL),
('Juguetes', 'Juguetes para niños de todas las edades', NULL),
('Joyería', 'Joyería fina y accesorios', NULL),
('Ropa', 'Ropa para hombres, mujeres y niños', NULL),
('Hogar', 'Artículos y accesorios para el hogar', NULL),
('Deportes', 'Equipos y accesorios para deportes', NULL),
('Cocina', 'Utensilios y accesorios para cocina', NULL),
('Libros', 'Libros de diversos géneros y autores', NULL),
('Música', 'CDs y vinilos de música', NULL),
('Jardinería', 'Productos y herramientas para jardinería', NULL),
('Belleza', 'Productos de belleza y cuidado personal', NULL),
('Automóviles', 'Accesorios y piezas para automóviles', NULL);


INSERT INTO pedido_realizado (codigo_pedido, codigo_producto, cantidad_pedido, precio_unidad) 
VALUES
(56565342, 1003, 2, 799.99),
(87984123, 1006, 3, 29.99),
(34561235, 1001, 1, 499.99),
(98654231, 1009, 5, 24.99),
(77712345, 1010, 2, 14.99),
(23459876, 1007, 4, 39.99),
(44566789, 1013, 3, 49.99),
(12345789, 1012, 1, 149.99),
(56432789, 1015, 2, 129.99),
(98761234, 1011, 3, 24.99),
(23456789, 1008, 4, 19.99),
(45678901, 1014, 2, 29.99),
(89012345, 1005, 1, 1999.99),
(67890123, 1002, 2, 899.99),
(43218976, 1004, 3, 49.99);


INSERT INTO pagos (codigo_cliente, forma_pago, id_transaccion, fecha_pago, total_pago) 
VALUES
(1, 'Tarjeta de crédito', 123456, '2024-06-12', 1500.00),
(2, 'PayPal', 789012, '2023-08-23', 2300.50),
(3, 'Transferencia bancaria', 345678, '2022-11-05', 1750.25),
(4, 'Efectivo', 901234, '2021-03-17', 980.75),
(5, 'Tarjeta de débito', 567890, '2020-12-30', 2000.00),
(6, 'Cheque', 234567, '2019-06-28', 1450.50),
(7, 'Transferencia bancaria', 890123, '2018-10-20', 3000.00),
(8, 'PayPal', 456789, '2017-09-10', 1750.25),
(9, 'Efectivo', 123456, '2016-05-15', 2100.00),
(10, 'Tarjeta de crédito', 789012, '2015-08-25', 3200.75),
(11, 'Cheque', 345678, '2014-07-06', 1850.00),
(12, 'Transferencia bancaria', 901234, '2013-08-14', 1700.50),
(13, 'PayPal', 567890, '2012-05-29', 2500.25),
(14, 'Tarjeta de débito', 234567, '2011-04-03', 1900.00),
(15, 'Efectivo', 890123, '2010-03-20', 3000.75);