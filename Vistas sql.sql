create view producto_masvendido AS
select  nombre_producto, count(*)  from orden
group by Nombre_producto;

create view transportista_ciudad  AS
select t.nombre, t.apellido, t.ciudad_id, t.telefono, c.nombre as nombre_ciudad from transportista as t
left join ciudad as c on c.ciudad_id = t.ciudad_id;

create view categoria_info AS
select * from categoria;

create view venta_xcliente AS
select o.cliente_id,  SUM(d.cantidad * d.precio_unitario) as total_venta from detalle_orden as d
join orden as o where d.orden_id = o.orden_id
group by o.orden_id
order by total_venta
desc;

create view clientes_datos AS
select * from cliente



