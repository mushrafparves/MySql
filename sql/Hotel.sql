create schema hotel;
use hotel;

create table hotel (id int primary key, name varchar(20), Phone_No bigint, city varchar(20), email varchar(30), 
Started_Year int, owner varchar(20));


select * from hotel;
desc hotel;

create table item (id int primary key, Item_name varchar(20), Item_type varchar(20));


select * from item;
desc item;

create table customer (id int primary key, name varchar(20), age int, email varchar(25), Mobile_No bigint, 
F_Name varchar(20), L_Name varchar(20));


select * from customer;
desc customer;

create table cust_htl_map (id int primary key, Customer_Id int, Quantity varchar(10), created_date date,
oredr_type varchar(10), htl_item_map_id int,
foreign key (Customer_Id) references customer(id),
foreign key (htl_item_map_id) references htl_item_map(id));


select * from cust_htl_map;
desc cust_htl_map;


create table htl_item_map (id int primary key, Hotel_Id int, Item_Id int, qnty int, price int,
foreign key (Hotel_Id) references hotel(id),
foreign key (Item_Id) references item(id));


select * from htl_item_map;
desc htl_item_map;


insert into hotel values (1, 'kmshakkim', 9360913978, 'trichy', 'kmshakkim@gmail.com', 2010, 'hakkim'),
(2, 'aasife', 9360913977, 'trichy', 'aasife@gmail.com', 2011, 'aasif'),
(3, 'thalapakatti', 9360913976, 'trichy', 'thalapakatti@gmail.com', 2012, 'thalapakatti');


insert into item values (11, 'idly', 'veg'),
(12, 'dosa', 'veg'),
(13, 'chappathi', 'veg'),
(14, 'pongal', 'veg'),
(15, 'poori', 'veg'),
(16, 'chicken_noodles', 'non_veg'),
(17, 'kothu_parotta', 'non_veg'),
(18, 'chicken_rice', 'non_veg'),
(19, 'biriyani', 'non_veg'),
(20, 'shawarma', 'non_veg');


insert into customer values(21, 'parves', 22, 'parves@gmail.com', 9976293010, 'parves', 'mushraf'),
(22, 'mushraf', 22, 'mushraf@gmail.com', 9976293011, 'parves', 'mushraf'),
(23, 'ibraheem', 18, 'ibraheem@gmail.com', 9976293012, 'ibu', 'ibraheem'),
(24, 'alan', 23, 'alan@gmail.com', 9976293013, 'alan', 'stephen'),
(25, 'deepan', 22, 'deepan@gmail.com', 9976293014, 'deepan', 'chakku');


insert into cust_htl_map values(31, 21, 2, '2021-01-11', 'dining', 41),
(32, 21, 5, '2021-02-12', 'dining', 42),
(33, 22, 7, '2022-03-13', 'dining', 43),
(34, 22, 9, '2022-04-14', 'dining', 44),
(35, 23, 12, '2020-05-15', 'dining', 45),
(36, 23, 18, '2020-06-16', 'take_away', 46),
(37, 24, 5, '2019-07-17', 'take_away', 47),
(38, 24, 7, '2019-08-18', 'take_away', 48),
(39, 25, 9, '2018-09-19', 'take_away', 49),
(40, 25, 12, '2018-10-20', 'take_away', 50),


(41, 21, 1, '2011-11-01', 'dining', 41),
(42, 21, 4, '2011-12-02', 'dining', 42),
(43, 22, 5, '2012-03-03', 'dining', 43),
(44, 22, 8, '2012-04-04', 'dining', 44),
(45, 23, 130, '2013-05-05', 'dining', 45),
(46, 23, 45, '2013-06-06', 'take_away', 46),
(47, 24, 50, '2014-07-07', 'take_away', 47),
(48, 24, 6, '2014-08-08', 'take_away', 48),
(49, 25, 8, '2015-09-09', 'take_away', 49),
(50, 25, 12, '2015-10-10', 'take_away', 50),


(51, 21, 25, '2001-01-21', 'dining', 41),
(52, 21, 80, '2001-02-22', 'dining', 42),
(53, 22, 120, '2002-11-23', 'dining', 43),
(54, 22, 15, '2002-12-24', 'dining', 44),
(55, 23, 20, '2003-05-25', 'dining', 45),
(56, 23, 10, '2003-06-26', 'take_away', 46),
(57, 24, 15, '2004-07-27', 'take_away', 47),
(58, 24, 4, '2004-08-28', 'take_away', 48),
(59, 25, 6, '2005-11-29', 'take_away', 49),
(60, 25, 20, '2005-12-30', 'take_away', 50);



insert into htl_item_map values (41, 1, 11, 1, 20),
(42, 1, 12, 2, 40),
(43, 1, 13, 1, 40),
(44, 1, 14, 2, 30),
(45, 2, 15, 1, 50),
(46, 2, 16, 2, 120),
(47, 2, 17, 1, 110),
(48, 3, 18, 2, 100),
(49, 3, 19, 1, 150),
(50, 3, 20, 2, 70);

