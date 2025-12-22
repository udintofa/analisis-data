show databases;

create database balaji_food;

use balaji_food;

show tables;

create table sales (
	order_id INT primary key,
    order_date date,
    item_name varchar(100),
    item_type varchar (100),
	item_price int,
	quantity int,
	transaction_amount int,
	transaction_type varchar(100),
	received_by varchar(100),
	time_of_sale varchar (100));

show create table sales;

SELECT * FROM sales;

SELECT COUNT(*) FROM sales;

delete from sales;
