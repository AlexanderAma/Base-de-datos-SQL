
delimiter //
CREATE FUNCTION consultarStockDisponible(id_producto INT)
RETURNS INT
DETERMINISTIC

BEGIN
	DECLARE 
    stock_total INT;
    DECLARE
    ventas_realizadas INT;
    SELECT stock INTO stock_total
    FROM producto as p
    WHERE Producto_id = id_producto;
    
    SELECT COALESCE(SUM(cantidad), 0) INTO ventas_realizadas
    FROM detalle_orden as d
    WHERE  Producto_id = id_producto;
    
    RETURN stock_total - ventas_realizadas;
END//
delimiter ;

select *, consultarStockDisponible(stock)
  from producto 
  
  
  delimiter //
CREATE FUNCTION costo_envio(distanciaenKM INT)
RETURNS INT
DETERMINISTIC

BEGIN
  DECLARE costo INT;
  DECLARE preciokilometro INT;
  set preciokilometro = 300;
  set costo = (distanciaenKM * precioKilometro);
    RETURN  costo;
END//
delimiter ;

delimiter //
CREATE FUNCTION `venta_final` (precio INTEGER, cantidad INTEGER)
RETURNS INTEGER
deterministic
BEGIN
	DECLARE resultado integer;
	SET resultado = (precio * cantidad);
	RETURN resultado;
END//
delimiter ;

