START transaction;
insert into ciudad (ciudad_id, nombre) VALUES (default, "Villa Gardino");
SELECT * from ciudad 
COMMIT;

# se quiere cambiar el nombre de ciudad que es Villa Giardino y 
# se carga erroneo el numero de ciudad_id. Corresponde al id=8
START transaction;
UPDATE ciudad
set nombre = "Villa Giardino"
where
ciudad_id = 7;
ROLLBACK;

# se carga correctamente en Nombre al numero de ciudad_id que corresponde
START transaction;
UPDATE ciudad
set nombre = "Villa Giardino"
WHERE
ciudad_id = 8;
COMMIT;

#save point
USE muebles_paz;
START transaction;
insert into categoria (categoria_id, nombre_categoria) values (default, "Escalera");
insert into categoria (categoria_id, nombre_categoria) values (default, "Camas");
insert into categoria (categoria_id, nombre_categoria) values (default, "Mesas de luz");
insert into categoria (categoria_id, nombre_categoria) values (default, "Mesas de apoyo");
SAVEPOINT sp1;
insert into categoria (categoria_id, nombre_categoria) values (default, "Rack");
insert into categoria (categoria_id, nombre_categoria) values (default, "Armarios");
insert into categoria (categoria_id, nombre_categoria) values (default, "Puertas");
insert into categoria (categoria_id, nombre_categoria) values (default, "Ventanas");
SAVEPOINT sp2;

#eliminar save point
#REALISE SAVEPOINT sp1:










