select * from products;
select * from manufacturers;

select name from products;

select name, price from products;

select name, price from products where price <= 200;

select * from products where price between 60 and 120;

select name, price*100 from products;

select avg(price) as AVG_PRICE from products;

select avg(price) as AVG_PRICE from products where manufacturer = '2';

select count(*) as QUANTITY from products where price >= 180;
select name, price from products where price >= 180 order by price desc, name asc;

select * from products inner join manufacturers on products.manufacturer = manufacturers.code;
select * from products, manufacturers where products.manufacturer = manufacturers.code;

select products.name, price, manufacturers.name as MAN_NAME from products, manufacturers where products.manufacturer = manufacturers.code;
select products.name, price, manufacturers.name as MAN_NAME from products inner join manufacturers on products.manufacturer = manufacturers.code;

select avg(price), manufacturer from products group by manufacturer;

select manufacturers.name from products inner join manufacturers on manufacturers.code = products.manufacturer group by manufacturers.name having avg(price) >= 150;

select name, price from products where price = (select min(price) from products);
select name, price from products order by price asc limit 1;

select manufacturers.name as MAN_NAME, products.name as PROD_NAME, price from products inner join manufacturers on products.manufacturer = manufacturers.code where price = (select max(price) from products);

insert into products (code, name, price, manufacturer) values (11,'Loudspeaker',70,2);
select * from products;

update products set name = 'Laser Printer' where code = 8;
select * from products;

update products set price = price - (price*0.1);
select * from products;

update products set price = price*0.9 where price >= 120;
select * from products;