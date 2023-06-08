
delimiter //
CREATE PROCEDURE aumento_precio (
in Codigo_producto int,
in aumento int,
out precio_nuevo float
)

begin
  DECLARE Precio_original int;
  SELECT Precio_unitario INTO Precio_original
  FROM producto
  WHERE Producto_id =  Codigo_producto;
  
  SET precio_nuevo = Precio_original * (1 + (aumento/100));
  
  UPDATE producto SET Precio_unitario = precio_nuevo
  where Producto_id = Codigo_producto;
end//

delimiter ;
call aumento_precio(1,10,@precio_nuevo);
select  @precio_nuevo 


delimiter //
CREATE PROCEDURE insertar_producto ( 
in Producto_id INT,
in Nombre_producto VARCHAR(30),
in Proveedores_id INT,
in Precio_unitario INT,
in Stock INT,
in Categoria_id INT
)
begin 
   INSERT INTO producto VALUES(Producto_id,Nombre_producto, Proveedores_id, Precio_unitario, Stock, Categoria_id);

end//

delimiter ;