create schema parves;
use parves;

create table employee1
(id int primary key, name varchar(30), age int, email varchar(30), Fname varchar(20), Lname varchar(20));

select * from employee1;
desc employee1;

create table emp_address
(id int primary key, DoorNo int, Street varchar(20), Area varchar(10), City varchar(10), District varchar(10), 
State varchar(10), PinCode int, Country varchar(10), employee1_id int, foreign key (employee1_id) references employee1(id));

select * from emp_address;
desc emp_address;

create table school1
(School_Id int primary key, School_Name varchar(25), School_Code varchar(10), School_TelNo bigint, emp_id int,
foreign key (emp_id) references employee1(id));

select * from school1;
desc school1;

create table scl_address
(id int primary key, School_Door_No int, 
School_Street varchar(20), School_Area varchar(20), School_City varchar(20), School_District varchar(20), School_State varchar(20),
School_PinCode int, School_Owner_Name varchar(20), School_MobileNo bigint, scl_address_id int, 
foreign key (scl_address_id) references school1(School_Id));

select * from scl_address;
desc scl_address;

create table college1
(College_Id int primary key, College_Name varchar(25), College_Code varchar(10), College_TelNo bigint, clg_id int,
foreign key (clg_id) references employee1(id));

select * from college1;
desc college1;

create table clg_address
(id int primary key, College_Door_No int, 
College_Street varchar(20), College_Area varchar(20), College_City varchar(20), College_District varchar(20), College_State varchar(20),
College_PinCode int, College_Owner_Name varchar(20), College_MobileNo bigint, clg_address__id int, 
foreign key (clg_address__id) references college1(College_Id));

select * from clg_address;
desc clg_address;


insert into employee1 values (1, 'parves_mushraf', 22,'parves@gmail.com', 'parves', 'mushraf'),
(2, 'mushraf_sulthan', 22,'mushraf@gmail.com', 'mushraf', 'sulthan'),
(3, 'mohamed_shiraj', 23,'shiraj@gmail.com', 'mohamed', 'shiraj'),
(4, 'naveen_nithiyanandan', 23,'nithya@gmail.com', 'naveen', 'nithiyananthan'),
(5, 'deepan_chaku', 22,'deepan@gmail.com', 'deepan', 'chaku'),
(6, 'alan_stephen', 22,'alan@gmail.com', 'alan', 'stephen'),
(7, 'vignesh_waran', 22,'vicky@gmail.com', 'vignesh', 'waran'),
(8, 'abdul_kalam', 22,'kalam@gmail.com', 'abdul', 'kalam'),
(9, 'mohamed_refai', 22,'refai@gmail.com', 'mohamed', 'refai'),
(10, 'ibu_ibraheem', 22,'ibraheem@gmail.com', 'ibu', 'ibraheem');


insert into emp_address values (1, 21, 'zahirhussain', 'pudur', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 1),
(2, 22, 'zahirhussain', 'sathani', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 2),
(3, 23, 'zahirhussain', 'sothugudi', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 3),
(4, 24, 'zahirhussain', 'kanmglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 4),
(5, 25, 'zahirhussain', 'tayamnglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 5),
(6, 26, 'zahirhussain', 'tirvlr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 6),
(7, 27, 'zahirhussain', 'arfngr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 7),
(8, 28, 'zahirhussain', 'salai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 8),
(9, 29, 'zahirhussain', 'kamakarai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 9),
(10, 30, 'zahirhussain', 'pcyndl', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india', 10);


insert into school1 values (1, 'HKKI,Ali,Hr,Sec,Scl', '17US9936', 04412345, 1),
(2, 'Anis,Hr,Sec,Scl', '17US9937', 04412346, 2),
(3, 'INPT,Hr,Sec,Scl', '17US9938', 04412347, 3);

insert into scl_address values (1, 11, 'pudurroad', 'pudur', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Ibrahim', 9976293010, 1),
(2, 12, 'salairoad', 'salai', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Parves', 9976293010, 2),
(3, 13, 'arifnagarroad', 'arifnagar', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Mushraf', 9976293010, 3);


insert into college1 values (1, 'JMC', '20MCA023', 04445678, 1),
(2, 'BHC', '20MCA024', 04445679, 2), 
(3, 'SJC', '20MCA025', 04445677, 3);

insert into clg_address values (1, 21, 'racecourseroad', 'tvstolgate', 'trichy', 'trichy',
'tamilnadu', 620020, 'Jamal', 9976293010, 1),
(2, 22, 'thillainagar', 'thillai', 'trichy', 'trichy',
'tamilnadu', 620020, 'Bishop', 9976293010, 2),
(3, 23, 'chathiram', 'busstand', 'trichy', 'trichy',
'tamilnadu', 620020, 'Joseph', 9976293010, 3);


alter table employee1 modify column name varchar(35);

alter table employee1 change Fname First_Name varchar(20);

alter table employee1 change Lname Last_Name varchar(18);
