-- Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.--
SELECT codigo_oficina, ciudad
FROM oficina;

-- Devuelve un listado con la ciudad y el teléfono de las oficinas de España.--
SELECT ciudad, telefono_oficina
FROM oficina
WHERE pais = 'España';

-- Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.--
SELECT nombre_empleado,apellido1_empleado,apellido2_empleado,email_empleado
FROM empleado
WHERE codigo_jefe = 7;

-- Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2024--
-- Usando la función YEAR --
SELECT codigo_cliente, fecha_pedido
FROM pedido
WHERE YEAR(fecha_pedido) = 2024;

-- Usando la funcion DATE FORMAT --
SELECT codigo_cliente, fecha_pedido
FROM pedido
WHERE DATE_FORMAT(fecha_pedido, '%Y') = '2024';

-- ¿Cuántos empleados hay en la compañía? --
SELECT COUNT(*) empleados_total
FROM empleado;

-- ¿Cuántos clientes tiene cada país? --
SELECT pais, COUNT(*) cliente_total
FROM cliente
GROUP BY pais;

-- ¿Cuál fue el pago medio en 2009?, ya que no habia fechas repetidas para sacar el promedio, usamos los metodos de pago para sacar los promedios --
SELECT forma_pago, ROUND(AVG(total_pago)) pago_promedio
FROM pagos
WHERE forma_pago = 'PayPal';

-- ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos. --
SELECT estado_pedido, COUNT(*) cantidad_pedido
FROM pedido
GROUP BY estado_pedido;

-- Calcula el precio de venta del producto más caro y barato en una misma consulta. --
SELECT MAX(precio_venta) precio_maximo, MIN(precio_venta) precio_minimo
FROM inventario;

-- Devuelve el nombre del cliente con mayor límite de crédito. --
SELECT nombre_contacto, limite_credito  
FROM cliente
ORDER BY limite_credito DESC
LIMIT 1;

-- Devuelve el nombre del producto que tenga el precio de venta más caro.--
SELECT nombre_producto, precio_venta
FROM inventario
ORDER BY precio_venta DESC
LIMIT 1;

-- Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla pedido_realizado)--
SELECT pr.cantidad_pedido, i.nombre_producto
FROM pedido_realizado pr
INNER JOIN inventario i ON pr.codigo_producto = i.codigo_producto
ORDER BY pr.cantidad_pedido DESC
LIMIT 1;

-- Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN)
SELECT c.codigo_cliente, c.nombre, c.limite_credito
FROM cliente c
WHERE c.limite_credito > (
    SELECT COALESCE(SUM(p.total_pago), 0)
    FROM pagos p
    WHERE p.codigo_cliente = c.codigo_cliente
);

-- Devuelve el listado de clientes indicando el nombre del cliente y cuantos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido
SELECT c.nombre, COUNT(p.codigo_pedido) cantidad_pedidos
FROM cliente c
LEFT JOIN pedido p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.nombre;

-- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.--
SELECT e.nombre_empleado, e.apellido1_empleado, e.apellido2_empleado, e.puesto, o.telefono_oficina 
FROM empleado e
JOIN oficina o ON e.codigo_oficina = o.codigo_oficina
LEFT JOIN cliente c ON e.codigo_empleado = c.codigo_empleado
WHERE c.codigo_empleado IS NULL;

-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.--

-- Devuelve todas las oficinas que no tienen ningún empleado asignado.--
SELECT o.*
FROM oficina o
LEFT JOIN empleado e ON o.codigo_oficina = e.codigo_oficina
WHERE e.codigo_empleado IS NULL;

-- Oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.--
SELECT * 
FROM oficina AS o
LEFT JOIN (SELECT DISTINCT e.codigo_oficina
FROM empleado AS e
INNER JOIN cliente AS c ON c.codigo_empleado = e.codigo_empleado
INNER JOIN pedido AS p ON p.codigo_cliente = c.codigo_cliente
INNER JOIN pedido_realizado AS de ON de.codigo_pedido = p.codigo_pedido
INNER JOIN inventario AS pro ON de.codigo_pedido = pro.codigo_producto
WHERE pro.gama = 'Muebles'
) AS q
ON o.codigo_oficina = q.codigo_oficina
WHERE q.codigo_oficina IS NULL;


-- Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.--
SELECT c.nombre_contacto, COALESCE(SUM(p.total_pago), 0) AS 'Total pagado'
FROM cliente c 
LEFT JOIN pagos p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.codigo_cliente,c.nombre_contacto;