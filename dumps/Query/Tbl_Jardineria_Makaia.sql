CREATE TABLE oficina(
    codigo_oficina INT PRIMARY KEY,
    ciudad VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    codigo_postal INT NOT NULL,
    telefono_oficina INT NOT NULL,
    direccion_oficina VARCHAR(50) NOT NULL
);

CREATE TABLE empleado(
    codigo_empleado INT PRIMARY KEY,
    nombre_empleado VARCHAR(50) NOT NULL,
    apellido1_empleado VARCHAR(50) NOT NULL,
    apellido2_empleado VARCHAR(50),
    extension_empleado VARCHAR(50) NOT NULL,
    email_empleado VARCHAR(50) NOT NULL,
    codigo_oficina INT NOT NULL,
    codigo_jefe INT NOT NULL,
    puesto VARCHAR(50) NOT NULL,
    FOREIGN KEY EMPLEADO_FK1 (codigo_oficina) REFERENCES oficina(codigo_oficina)
);

CREATE TABLE cliente(
    codigo_cliente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(50) NOT NULL,
    apellido_contacto VARCHAR (50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    fax VARCHAR(50) NOT NULL,
    direccion1 VARCHAR(50) NOT NULL,
    direccion2 VARCHAR(50),
    ciudad VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(50) NOT NULL,
    codigo_empleado INT NOT NULL,
    limite_credito DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY CLIENTE_KF1(codigo_empleado) REFERENCES empleado(codigo_empleado)
);

CREATE TABLE pedido(
    codigo_pedido INT PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    fecha_esperada DATE NOT NULL,
    fecha_entrega DATE,
    estado_pedido VARCHAR(50) NOT NULL,
    comentarios TEXT,
    codigo_cliente INT NOT NULL,
    FOREIGN KEY PEDIDO_KF1(codigo_cliente) REFERENCES cliente(codigo_cliente)
);

CREATE TABLE pagos(
    codigo_cliente INT,
    forma_pago VARCHAR(50) NOT NULL,
    id_transaccion INT NOT NULL,
    fecha_pago DATE,
    total_pago DECIMAL(10,2),
    FOREIGN KEY PAGOS_FK1 (codigo_cliente) REFERENCES cliente(codigo_cliente)
);

CREATE TABLE pedido_realizado(
    codigo_pedido INT PRIMARY KEY,
    codigo_producto INT NOT NULL,
    cantidad_pedido INT NOT NULL,
    precio_unidad INT NOT NULL,
    FOREIGN KEY pedidos_realizados_KF1 (codigo_pedido) REFERENCES pedido(codigo_pedido),
    FOREIGN KEY pedidos_realizados_KF2 (codigo_producto) REFERENCES inventario(codigo_producto)
);

CREATE TABLE inventario(
    codigo_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(50) NOT NULL,
    gama VARCHAR(50) NOT NULL,
    dimensiones INT NOT NULL,
    proveedor VARCHAR(50) NOT NULL,
    descripcion_producto VARCHAR(50) NOT NULL,
    cantidad_producto INT NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    precio_proveedor DECIMAL(10,2) NOT NULL,
    FOREIGN KEY INVENTARIO_KF1(gama) REFERENCES gamas_productos(gama)
);

CREATE TABLE gamas_productos(
    gama VARCHAR(50) PRIMARY KEY,
    descripcion_gama VARCHAR(50) NOT NULL,
    imagen BLOB
);




