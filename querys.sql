-- Selecciona todos los registros y todas las columnas desde la tabla mock_data

SELECT *
FROM MOCK_DATA;
--filtrar registros
SELECT *
FROM MOCK_DATA
WHERE ID = 5;
--
SELECT *
FROM MOCK_DATA
WHERE ID in (1,5,3,6,7,10);
-- TRaer genero Female
SELECT *
FROM MOCK_DATA
WHERE gender = 'Female';
--Limitar respuesta a 2
SELECT *
FROM MOCK_DATA
LIMIT 4;
--ordenar
SELECT *
FROM MOCK_DATA
ORDER BY id asc;
--
SELECT *
FROM MOCK_DATA
ORDER BY gender, id asc;
--
SELECT *
FROM MOCK_DATA
WHERE id
BETWEEN 5 AND 7;


select * from mock_products;
--
select max(price),min(price) from mock_products;
--
select * from mock_products where price = 9688 OR price = 298;
select * from mock_products where price in(9688,298);
--contar
select count(price) from mock_products;

--GROUP BY
SELECT gender, count(gender) as contador FROM mock_data GROUP BY gender ORDER BY contador ASC;

select product_name, price from mock_products group by product_name, price;

select price, count(price) from mock_products group by price;

select product_name, count(product_name) from mock_products where price < 5000 group by product_name;



