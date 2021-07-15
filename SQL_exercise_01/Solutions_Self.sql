1;
SELECT name FROM sql_learninig.products ;
2;
SELECT name, price FROM sql_learninig.products ;
3;
SELECT name FROM sql_learninig.products WHERE price<=200 ;
4;
SELECT name FROM sql_learninig.products WHERE price BETWEEN 60 AND 200;
5;
SELECT name, price*100 FROM sql_learninig.products ;
6;
SELECT AVG( price ) FROM sql_learninig.products ;
7;
SELECT AVG( price ) FROM sql_learninig.products WHERE manufacturer=2 ;
8;
SELECT COUNT(*) FROM sql_learninig.products WHERE price>=180 ; 
9;
SELECT name, price FROM sql_learninig.products WHERE price>=180 ORDER BY price DESC , name ASC ;
10;
SELECT  products.name, products.price, products.manufacturer, products.code, manufacturers.Name from products
INNER JOIN manufacturers ON products.manufacturer=manufacturers.code ;
10.2;
SELECT a.* , b.name from products a JOIN manufacturers b ON (a.manufacturer = b.code) ;
11;
SELECT a.name, a.price, b.name FROM products a JOIN manufacturers b ON (a.manufacturer = b.code) ;
12;
SELECT AVG(price) , manufacturer 
FROM products 
GROUP BY manufacturer ;
13;
SELECT AVG(a.price), b.name
FROM products a JOIN manufacturers b
ON (a.manufacturer = b.code) 
GROUP BY a.manufacturer;    
14;
SELECT b.name, AVG(a.price)
FROM products a JOIN manufacturers b
ON (a.manufacturer = b.code)
GROUP BY a.manufacturer
ORDER BY AVG(a.price) DESC, b.name ASC ;
15;
SELECT name, price from products
where price=(
    SELECT min(price)
    from products
) ;

SELECT name, price from products
ORDER BY price ASC
LIMIT 1 ;
 
Select a.name, a.price from products a 
RIGHT OUTER JOIN products b on (a.price = b.price) ORDER BY b.price ASC LIMIT 6 ; 

16;

'My Solution'
Select product, Price, Manufacturer
from  
    ( Select MAX(products.price) Price, manufacturers.name as Name
    from products, manufacturers
    where (products.manufacturer = manufacturers.code)
    group by manufacturers.name)
    as max_price_mapping
join
    (Select products.name as product, products.price as price2, manufacturers.name as Manufacturer
    from products join manufacturers
    on (products.manufacturer = manufacturers.code))
    as product_manufacturer_mapping
on (max_price_mapping.Price = product_manufacturer_mapping.price2) 
    and 
    (max_price_mapping.Name = product_manufacturer_mapping.Manufacturer) ;


'Author Solution'
select max_price_mapping.name as manu_name, max_price_mapping.price, products_with_manu_name.name as product_name
from 
    (SELECT Manufacturers.Name, MAX(Price) price
     FROM Products, Manufacturers
     WHERE Manufacturer = Manufacturers.Code
     GROUP BY Manufacturers.Name)
     as max_price_mapping 
   left join
     (select products.*, manufacturers.name manu_name
      from products join manufacturers
      on (products.manufacturer = manufacturers.code))
      as products_with_manu_name
 on
   (max_price_mapping.name = products_with_manu_name.manu_name
    and
    max_price_mapping.price = products_with_manu_name.price);

17;
Insert into products(manufacturer, name, price) VALUES (2, 'Loud Speaker', 70) ;
18;
update products 
SET name='Laser printer' 
where (code=8) ;

19;
update products
set price = price*0.9 ;
20;
update products
set price = price*0.9 
where price > 180 ;
