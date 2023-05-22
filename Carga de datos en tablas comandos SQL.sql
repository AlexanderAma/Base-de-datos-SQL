USE muebles_paz;

insert into ciudad (ciudad_id, nombre) VALUES (default, "Cordoba");
insert into ciudad (ciudad_id, nombre) VALUES (default, "Carlos Paz");
insert into ciudad (ciudad_id, nombre) VALUES (default, "La Falda");
insert into ciudad (ciudad_id, nombre) VALUES (default, "Villa Allende");
insert into provincia(provincia_id, nombre) VALUES(default, "Cordoba");
insert into provincia(provincia_id, nombre) VALUES(default, "Santa Fe");
insert into provincia(provincia_id, nombre) VALUES(default, "Corrientes");
insert into provincia(provincia_id, nombre) VALUES(default, "La Pampa");
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Carlos ", "Gutierrez", "San Lorenzo 567 2B", 1, 1, "Argentina", 2963980498);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Felipe ", "Sosa", "San Lorenzo 1302", 1, 1, "Argentina", 2962845689);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Guillermo ", "Lezcano", "San Pedro 1302", 4, 1, "Argentina", 3512567895);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Ana Laura", "Lezcano", "Libertad 1302", 4, 1, "Argentina", 3512567800);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ," Laura", "Gimenez", "Libertad 1456", 4, 1, "Argentina", 3512567855);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default,"Andrea", "Gimenez", "Lima 945 3C", 2, 1, "Argentina", 3512567811);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Nicolas", "Ladousse", "Catamarca 945", 2, 1, "Argentina", 3512567899);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Nicolas", "Rojas", "Obispo Oro 876 10C", 2, 1, "Argentina", 3512567888);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Carlos", "Perez", "Obispo Oro 876 ", 5, 2, "Argentina", 4562567888);
insert into Cliente (cliente_id, Nombre, apellido, direccion, ciudad_id, provincia_id, pais, telefono) values(default ,"Carlos", "Rojas", "Lugones 933 ", 5, 2, "Argentina", 4562567888);
insert into categoria (categoria_id, nombre_categoria) values (default, "Mesa");
insert into categoria (categoria_id, nombre_categoria) values (default, "Silla");
insert into categoria (categoria_id, nombre_categoria) values (default, "mesa ratona");
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id, pais, telefono, email) values (default, "Muebles MB", "Ruta Nacinal 4789", 6, 5, "Argentina", 1123456789, "mb@gmail.com"); 
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id,pais, telefono, email) values (default, "Margaritas", "Ruta Nacional 47", 7, 5, "Argentina", 1129345678, "margaritas@gmail.com");
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id, pais, telefono, email) values (default, "Genera Paz", "Catamarca 47", 1, 1, "Argentina", 1129345678, "gp@gmail.com");
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id, pais, telefono, email) values (default, "Vimtage", "Catamarca 990", 1, 1,  "Argentina", 3519345678, "vv@gmail.com");
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id, pais, telefono, email) values (default, "Todo Madera", "Catamarca 990", 5, 2, "Argentina", 3519345678, "td@gmail.com");
insert into proveedores(proveedores_id, Razon_social, direccion, ciudad_id, provincia_id, pais, telefono, email) values (default, "DecoH", "Catamarca 990", 5, 2, "Argentina", 4419345678, "dh@gmail.com");
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Eames", 1, 8000, 100, 14);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Vintage", 1, 50000, 10, 1);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Cleo", 1, 50000, 8, 1);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Totem", 5, 20000, 8, 14);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Tom", 3, 30000, 8, 15);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Sam", 3, 100000, 5, 15);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Timoti", 6, 10000, 20, 1);
insert into producto (producto_id, nombre_producto, proveedores_id, precio_unitario, stock, categoria_id) values (default, "Colores", 6, 13000, 24, 1);
insert into transportista (transportista_id, nombre, apellido, documento, telefono, ciudad_id, provincia_id)  VALUES (default, "Federico", "Sosa", "2345676543", 3512345638, 1,1);
insert into transportista (transportista_id, nombre, apellido, documento, telefono, ciudad_id, provincia_id)  VALUES (default, "Alejandro", "Smith", "3145676599", 3512345698, 2,1);
insert into transportista (transportista_id, nombre, apellido, documento, telefono, ciudad_id, provincia_id)  VALUES (default, "Santiago", "Lopez", "3045676555", 3512345678, 4,1);
insert into transportista (transportista_id, nombre, apellido, documento, telefono, ciudad_id, provincia_id)  VALUES (default, "Claudio", "Hans", "2845676543", 7772345678, 5,2);
insert into transportista (transportista_id, nombre, apellido, documento, telefono, ciudad_id, provincia_id)  VALUES (default, "Tamara", "Gimenez", "2545676576", 7772345678, 5,2);



