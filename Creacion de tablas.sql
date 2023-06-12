CREATE SCHEMA muebles_paz;
USE muebles_paz;



CREATE TABLE Provincia (
	Provincia_id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY (Provincia_id)
);

CREATE TABLE Ciudad (
	Ciudad_id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY (Ciudad_id)
);

CREATE TABLE Transportista (
	Transportista_id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(45),
    Apellido VARCHAR(45),
    Documento INT NOT NULL,
    telefono VARCHAR (45) NOT NULL,
    Ciudad_id INT NOT NULL,
    Provincia_id INT NOT NULL,
    PRIMARY KEY (Transportista_id),
    FOREIGN KEY (Ciudad_id) REFERENCES Ciudad (Ciudad_id),
    FOREIGN KEY (Provincia_id) REFERENCES Provincia (Provincia_id)
);

CREATE TABLE cliente(
	Cliente_id INT NOT NULL AUTO_INCREMENT, 
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR (45) NOT NULL,
    Direccion VARCHAR (45) NOT NULL,
    Ciudad_id INT NOT NULL,
    Provincia_id INT NOT NULL,
    Pais VARCHAR (45) NOT NULL,
    Telefono VARCHAR (45),
    PRIMARY KEY (Cliente_id),
    FOREIGN KEY (Ciudad_id) REFERENCES Ciudad (Ciudad_id),
    FOREIGN KEY (Provincia_id) REFERENCES Provincia (Provincia_id)
   
);

CREATE TABLE Proveedores(
	Proveedores_id INT NOT NULL AUTO_INCREMENT, 
    Razon_Social VARCHAR(45) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Ciudad_id INT NOT NULL,
    Provincia_id INT NOT NULL,
    Pais  VARCHAR (45) NOT NULL,
    Telefono VARCHAR (45) NOT NULL,
    Email varchar(45) NOT NULL,
    PRIMARY KEY (proveedores_id),
    FOREIGN KEY (Ciudad_id) REFERENCES Ciudad (Ciudad_id),
    FOREIGN KEY (Provincia_id) REFERENCES Provincia (Provincia_id)
);

CREATE TABLE Categoria(
	Categoria_id INT NOT NULL AUTO_INCREMENT, 
    Nombre_producto VARCHAR(45) NOT NULL,
    PRIMARY KEY (categoria_id)
    
);

CREATE TABLE Producto (
	Producto_id INT NOT NULL AUTO_INCREMENT, 
	Nombre_producto VARCHAR(45) NOT NULL,
	Proveedores_id INT NOT NULL,
	Precio_unitario INT NOT NULL,
	Stock INT NOT NULL,
	Categoria_id INT NOT NULL,
	PRIMARY KEY (producto_id),
	FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id),
    FOREIGN KEY (proveedores_id) REFERENCES Proveedores(proveedores_id)
);


CREATE TABLE Orden (
	Orden_id INT NOT NULL AUTO_INCREMENT, 
    Nombre_producto VARCHAR(45) NOT NULL,
    Fecha_orden date NOT NULL,
    Cliente_id int NOT NULL,
    PRIMARY KEY (orden_id),
	FOREIGN KEY (cliente_id) REFERENCES Cliente (cliente_id)
);

CREATE TABLE Detalle_orden (
	Detalle_id INT NOT NULL AUTO_INCREMENT, 
    Producto_id INT,
    Orden_id INT,
    Transportista_id INT NOT NULL,
    Precio_unitario INT NOT NULL,
    Cantidad INT NOT NULL,
    Descuento INT NOT NULL,
    PRIMARY KEY (detalle_id), 
    FOREIGN KEY (producto_id) REFERENCES Producto (producto_id),
    FOREIGN KEY (orden_id) REFERENCES Orden(orden_id),
    FOREIGN KEY (Transportista_id) REFERENCES Transportista(Transportista_id)
);


USE muebles_paz;

CREATE TABLE Empleado_venta (
	id_log INT NOT NULL AUTO_INCREMENT,
    tabla varchar(45),
    orden_id INT,
    usuario VARCHAR (45),
    fecha datetime,
    PRIMARY KEY (id_log)
    
);



