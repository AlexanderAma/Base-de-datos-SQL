
- Se agrega Vistas, Triggers, Stored procedure y Funciones:
- 
-VISTAS: se agregan 5 vistas de consultas:
1- producto_masvendido : Cuenta los prodctos mas vendidos de la tabla orden 
2- transportista_ciudad : muestra los datos de transportistas por ciudad a travez de un join de la tabla trasportistas y la tabla aiuxiliar ciudad.
3- categoria_info : muestra la tabla de categoria por produsto para facilitar la carga de datos o buscar alternativas de producto segun la categoria(mesas, sillas, estantes, etc.)
4- venta_xcliente: mestra las compras realizadas por cada cliente, para conocer el perfil de cada comprador y hacer macer marketing personalizado.
5- clientes_datos: muestra los datos comoletos de clientes para facilitar la garga de datos y ventas.

-FUNCIONES: se generan 3 funciones:
Una función para ver el stock disponible de cada producto: De la tabla producto - columna Stock se descuenta las ventas realizadas que se encuentran en la tabla Detalle_Orden comparando el Producto_id en ambas tablas. 
-Segunda función consultar el costo de envió por distancia en Kilómetros, se ingresan los kilómetros y se multiplica por el precio por kilometro.
-Tercera función: calcula el precio final de venta multiplicando la cantidad por el precio.

-STORED PROCEDURE: se crean 2 procedimientos almacenados. 
1- Se crea un SP para cargar los productos a la tabla Productos con cada unos de los valores.
2- Se crea un SP para calcular el aumento de precio de cada producto buscando por Id y sumando al precio anterior el porcentaje de aumento que corresponda,  luego se cargue a la tabla Producto a travez de UPDATE

-TRIGGER: se crea 2 trigger:
1- un trigger insert_venta: una vez que se cargue una venta en la tabla Orden se carga esa accion a una tabla creada previamente que se llama Empleado_venta donde se guarda el numero de orden emitida, fecha, usuario etc. 
2- un trigger  inser_producto: cada vez que se elimine un producto de la tabla Producto se carga automaticamente en la Tabla audits creada previamente, con los datos de usuario, fecha, entidad, etc.
-Ambas tablas creadas estan en el procedimiento de creacion de trigger.



PRIMERA ENTREGA
- Se cargan datos en las tablas creadas anteriormente mediante comandos SQL, excepto para las tablas de Orden y Detalle_orden que se hace mediante importación de datos en formato CSV. Ambas tablas tienen la misma cantidad de columna y el mismo orden que la base en SQL excepto en ambos casos la FK ya que es auto incremental por lo que no se incluye esa columna en los archivos csv.

- Creación de tablas para proyecto final
