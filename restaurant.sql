drop table orders;
drop table customer;
drop table waiter;
drop table manager;
drop table food;


create table customer(
	id int,
	name varchar(20) not null,
	phone number(6) unique,
	address varchar(20),
	review varchar(30),
	primary key(id));

create table manager(
	id int,
	name varchar(20) not null,
	phone number(6) unique,
	address varchar(20),
	primary key(id));


create table waiter(
	id int,
	name varchar(20) not null,
	phone number(6) unique,
	address varchar(20),
	salary number(6),
	manager_id int,
	foreign key (manager_id) references manager(id),
	primary key(id));

create table food(
	id int,
	name varchar(20) not null,
	price number(6),
	rating number(2),
	primary key(id));

create table orders(
	order_no int,
	cust_id int ,
	waiter_id int,
	food_id int,
	quantity int,
	foreign key (cust_id) references customer(id),
	foreign key (waiter_id) references waiter(id),
	foreign key (food_id) references food(id),
	primary key(order_no));

insert into customer (id, name, phone, address, review) values (1,'Nayan', 8881,'Cumilla','Average');
insert into customer (id, name, phone, address, review) values (2,'Tarikul', 8882,'Cumilla','Good');
insert into customer (id, name, phone, address, review) values (3,'Ankur', 8883,'Rajshahi','Bad');
insert into customer (id, name, phone, address, review) values (4,'Kriti', 8884,'Dhaka','Good');
insert into customer (id, name, phone, address, review) values (5,'Ena', 8885,'Chittagong','Bad');
insert into customer (id, name, phone, address, review) values (6,'Ayan', 8886,'Cumilla','Average');
insert into customer (id, name, phone, address, review) values (7,'Tarik', 8887,'Cumilla','Bad');
insert into customer (id, name, phone, address, review) values (8,'Ankon', 8888,'Chittagong','Bad');
insert into customer (id, name, phone, address, review) values (9,'Priti', 8889,'Dhaka','Average');
insert into customer (id, name, phone, address, review) values (10,'Mona', 8890,'Chittagong','Good');
insert into customer (id, name, phone, address, review) values (11,'Sharukh', 7771,'Dhaka','Good');
insert into customer (id, name, phone, address, review) values (12,'Salman', 7772,'Rajshahi','Good');
insert into customer (id, name, phone, address, review) values (13,'Aamir', 7773,'Barishal','Good');
insert into customer (id, name, phone, address, review) values (14,'Hrithik', 7774,'Rangpur','Average');
insert into customer (id, name, phone, address,review) values (15,'Ranbir', 7775,'Noakhali','Average');


insert into manager (id, name, phone, address) values (1,'Riaz',8001,'Dhaka');
insert into manager (id, name, phone, address) values (2,'Purnima',8002,'Noakhali');
insert into manager (id, name, phone, address) values (3,'Ananta Jalil',8003,'Barishal');
insert into manager (id, name, phone, address) values (4,'Porimoni',8004,'Barishal');
insert into manager (id, name, phone, address) values (5,'Jayed Khan',8005,'Sylhet');



insert into waiter (id, name, phone, address, salary, manager_id) values (1, 'Borsha', 7001, 'Dhaka',5000,3);
insert into waiter (id, name, phone, address, salary, manager_id) values (2, 'Shabnur', 7002, 'Rajshahi',6000, 1);
insert into waiter (id, name, phone, address, salary, manager_id) values (3, 'Raj', 7003, 'Noakhali',8000, 4);
insert into waiter (id, name, phone, address, salary, manager_id) values (4, 'Shakib Khan', 7004, 'Barishal',7000, 4);
insert into waiter (id, name, phone, address, salary, manager_id) values (5, 'Nipun', 7005, 'Dhaka',3000, 5);
insert into waiter (id, name, phone, address, salary, manager_id) values (6, 'Borshon', 7006, 'Dhaka',2000, 3);
insert into waiter (id, name, phone, address, salary, manager_id) values (7, 'Shabnaz', 7007, 'Rajshahi',6000, 2);
insert into waiter (id, name, phone, address, salary, manager_id) values (8, 'Rajon', 7008, 'Noakhali',4000, 4);
insert into waiter (id, name, phone, address, salary, manager_id) values (9, 'Shanto', 7009, 'Barishal',2000, 4);
insert into waiter (id, name, phone, address, salary, manager_id) values (10, 'Nipa', 7010, 'Dhaka',9000, 5);
insert into waiter (id, name, phone, address, salary, manager_id) values (11, 'Jessica', 7011, 'Dhaka',11000,2 );
insert into waiter (id, name, phone, address, salary, manager_id) values (12, 'Ema', 7012, 'Barishal',12000,1 );
insert into waiter (id, name, phone, address, salary, manager_id) values (13, 'Kate', 7013, 'Noakhali',13000,4 );
insert into waiter (id, name, phone, address, salary, manager_id) values (14, 'Selena', 7014, 'Sylhet',14000,3 );
insert into waiter (id, name, phone, address, salary, manager_id) values (15, 'Angellina', 7015, 'Cumilla',15000,5 );



insert into food (id, name, price, rating) values (1,'Burger',200, 8);
insert into food (id, name, price, rating) values (2,'Pasta',250, 7);
insert into food (id, name, price, rating) values (3,'Pizza',500, 8);
insert into food (id, name, price, rating) values (4,'French Fries',150, 9);
insert into food (id, name, price, rating) values (5,'Chicken Fry',200, 7);
insert into food (id, name, price, rating) values (6,'Sharma',200, 8);
insert into food (id, name, price, rating) values (7,'Kabab',250, 7);
insert into food (id, name, price, rating) values (8,'Sandwitch',500, 8);
insert into food (id, name, price, rating) values (9,'Steak',150, 9);
insert into food (id, name, price, rating) values (10,'Cake',200, 7);



insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (1,2,1,3,2);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (2,3,2,1,5);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (3,1,5,4,1);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (4,5,3,5,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (5,4,4,2,6);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (6,1,5,4,1);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (7,5,3,5,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (8,2,4,2,6);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (9,1,4,2,6);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (10,1,5,4,1);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (11,5,3,5,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (12,2,4,2,6);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (13,8,7,5,2);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (14,10,3,6,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (15,11,5,7,4);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (16,13,6,9,5);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (17,15,9,8,6);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (18,12,7,6,7);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (19,14,3,10,8);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (20,15,4,7,9);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (21,10,8,6,1);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (22,12,2,8,2);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (23,11,1,10,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (24,12,12,1,1);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (25,15,13,2,2);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (26,13,15,3,3);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (27,14,13,5,7);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (28,12,9,4,8);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (29,8,4,7,4);
insert into orders (order_no, cust_id, waiter_id, food_id, quantity) values (30,7,5,8,5);

update waiter set salary = salary * 2 where manager_id in (select id from manager where name='Purnima');

commit;