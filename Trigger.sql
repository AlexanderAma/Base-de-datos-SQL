
CREATE TRIGGER insert_venta
AFTER INSERT ON orden 
FOR EACH ROW 
INSERT INTO empleado_venta (tabla, orden_id, usuario, fecha) 
VALUES ("orden", NEW.orden_id, USER(), CURRENT_TIMESTAMP());

INSERT INTO orden (orden_id, Nombre_producto, Fecha_orden, Cliente_id) VALUES (NULL,"Eames", "2023-04-05 00:00:00", 1);



CREATE TABLE audits(
id_log INT PRIMARY KEY auto_increment,
entity VARCHAR(100),
entity_id INT,
insert_dt datetime,
delete_by VARCHAR(45)
);

CREATE TRIGGER inser_producto
AFTER DELETE ON producto
FOR EACH ROW
INSERT INTO audits (entity, entity_id, insert_dt, delete_by)
VALUES (producto, OLD.producto_id, current_timestamp(), user());

SELECT * FROM producto WHERE  Producto_id = 9;

USE muebles_paz;
DELETE FROM producto WHERE Producto_id = 9;



