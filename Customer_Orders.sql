/*Create customer table*/
create table customers (
customer_id int primary key,
first_name varchar(40),
last_name varchar(40),
email varchar(40),
phone_number varchar(40),
address varchar(40)
);

/*Create Orders table*/
create table orders (
order_id varchar(20) primary key,
order_date date,
total_amount int,
customer_id int,
foreign key(customer_id) references customers(customer_id) on delete cascade
); 

/*Create Order items table*/
create table order_items (
order_item_id varchar(20) primary key,
order_id varchar(20),
product_name varchar(40),
quantity int,
unit_price int,
foreign key(order_id) references orders(order_id) on delete cascade
);

/*Create Payment table*/
create table payment (
payment_id int primary key,
payment_date date,
amount int,
customer_id int,
order_item_id varchar(20),
payment_method varchar(40),
foreign key(order_item_id) references order_items(order_item_id) on delete cascade,
foreign key(customer_id) references customers(customer_id) on delete cascade
);

/*Insert customers information*/
insert into customers values(100, 'James', 'Mensah', 'james.mensah@gmail.com', '0244123xxx', '15 Ring Rd, Accra');
insert into customers values(101, 'Abena', 'Asante', 'abena.asante@yahoo.com', '0201987xxx', '8 Guggisberg Ave, Kumasi');
insert into customers values(102, 'Kofi', 'Boateng', 'kofi.boateng@gmail.com', '0277456xxx', '22 Liberation Rd, Accra');
insert into customers values(103, 'Ama', 'Owusu', 'ama.owusu@outlook.com', '0554321xxx', '5 Lake Rd, Takoradi');
insert into customers values(104, 'Kweku', 'Darko', 'kweku.darko@gmail.com', '0240765xxx', '10 Nkrumah Circle, Accra');
insert into customers values(105, 'Akosua', 'Frimpong', 'akosua.f@gmail.com', '0208654xxx', '   3 Harper Rd, Kumasi');
insert into customers values(106, 'Yaw', 'Acheampong', 'yaw.acheampong@yahoo.com', '0264891xxx', '18 Airport Rd, Accra');
insert into customers values(107, 'Efua', 'Baah', 'efua.baah@gmail.com', '0501234xxx', '7 Suame Rd, Kumasi');
insert into customers values(108, 'Nana', 'Adjei', 'nana.adjei@outlook.com', '0243567xxx', '30 Tema Motorway, Accra');
insert into customers values(109, 'Kwame', 'Tetteh', 'kwame.tetteh@gmail.com', '0271098xxx', '11 Harbour Rd, Takoradi');

/*Insert orders information*/
insert into orders values('INV1', '2025-01-05', 75000, 100);
insert into orders values('INV2', '2025-01-12', 120000, 102);
insert into orders values('INV3', '2025-02-01', 45000, 101);
insert into orders values('INV4', '2025-02-14', 200000, 104);
insert into orders values('INV5', '2025-03-03', 88000, 103);
insert into orders values('INV6', '2025-03-20', 35000, 106);
insert into orders values('INV7', '2025-04-08', 150000, 105);
insert into orders values('INV8', '2025-04-22', 62000, 108);
insert into orders values('INV9', '2025-05-10', 95000, 107);
insert into orders values('INV10', '2025-05-28', 110000, 109);

/*Insert order items information*/
insert into order_items values('TM1', 'INV8', 'Office Chair', 2, 15000);
insert into order_items values('TM2', 'INV7', 'Desk Lamp', 1, 8000);
insert into order_items values('TM3', 'INV10', 'Laptop Stand', 3, 12000);
insert into order_items values('TM4', 'INV6', 'Wireless Mouse', 2, 6500);
insert into order_items values('TM5', 'INV3', 'Monitor 24"', 2, 85000);
insert into order_items values('TM6', 'INV1', 'Keyboard', 1, 18000);
insert into order_items values('TM7', 'INV5', 'USB Hub', 4, 4500);
insert into order_items values('TM8', 'INV9', 'Webcam HD', 1, 35000);
insert into order_items values('TM9', 'INV2', 'Headphones', 2, 22000);
insert into order_items values('TM10', 'INV4', 'Printer Ink', 5, 9500);

select * from customers;
select * from orders;
select * from order_items;
select * from payment;

/*insert payment information*/
insert into payment values(440, '2025-01-06', '30000', 100, 'TM1', 'Mobile Money');
insert into payment values(441, '2025-01-13', '12000', 102,  'TM3', 'Bank Transfer');
insert into payment values(442, '2025-02-02', '13000', 101,  'TM4', 'Cash');
insert into payment values(443, '2025-02-15', '170000', 104, 'TM8', 'Credit Card');
insert into payment values(444, '2025-03-04', '18000', 103, 'TM6', 'Mobile Money');
insert into payment values(445, '2025-03-21', '18000', 106, 'TM7', 'Cash');
insert into payment values(446, '2025-04-09', '35000', 105, 'TM5', 'Bank Transfer');
insert into payment values(447, '2025-04-23', '44000', 108, 'TM9', 'Credit Card');
insert into payment values(448, '2025-05-11', '47500', 107, 'TM10', 'Mobile Money');
insert into payment values(449, '2025-05-29', '110000', 109, 'TM2', 'Bank Transfer');


select * from customers; 
select * from orders; 
SELECT * FROM order_items
ORDER BY CAST(SUBSTRING(order_item_id, 3) AS UNSIGNED);
select * from payment; 


