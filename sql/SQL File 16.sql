use emp;

create table employee1
(id int primary key, name varchar(30), age int, email varchar(30), Fname varchar(20), Lname varchar(20));

create table emp_address
(id int primary key, DoorNo int, Street varchar(20), Area varchar(10), City varchar(10), District varchar(10), 
State varchar(10), PinCode int, Country varchar(10), employee1_id int, foreign key (employee1_id) references employee1(id));

create table school1
(School_Id int primary key, School_Name varchar(25), School_Code varchar(10), School_TelNo bigint);

create table scl_address
(id int primary key, School_Door_No int, 
School_Street varchar(20), School_Area varchar(20), School_City varchar(20), School_District varchar(20), School_State varchar(20),
School_PinCode int, School_Owner_Name varchar(20), School_MobileNo bigint, scl_address_id int, 
foreign key (scl_address_id) references school1(id));

create table college1
(College_Id int primary key, College_Name varchar(25), College_Code varchar(10), College_TelNo bigint);

create table clg_address
(id int primary key, College_Door_No int, 
College_Street varchar(20), College_Area varchar(20), College_City varchar(20), College_District varchar(20), College_State varchar(20),
College_PinCode int, College_Owner_Name varchar(20), College_MobileNo bigint, clg_address__id int, 
foreign key (clg_address__id) references college1(id));


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


insert into emp_address values (21, 'zahirhussain', 'pudur', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(22, 'zahirhussain', 'sathani', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(23, 'zahirhussain', 'sothugudi', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(24, 'zahirhussain', 'kannamangalam', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(25, 'zahirhussain', 'thayamangalam', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(26, 'zahirhussain', 'thiruvallur', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(27, 'zahirhussain', 'aarifnagar', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(28, 'zahirhussain', 'salai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(29, 'zahirhussain', 'kammakarai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india'),
(30, 'zahirhussain', 'poochiyendhal', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india');


insert into school1 values (1, 'HKKI,Ali,Hr,Sec,Scl', '17US9936', 04412345),
(2, 'Anis,Hr,Sec,Scl', '17US9937', 04412346),
(3, 'INPT,Hr,Sec,Scl', '17US9938', 04412347);

insert into scl_address values (1, 11, 'pudurroad', 'pudur', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Ibrahim', 9976293010),
(2, 12, 'salairoad', 'salai', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Parves', 9976293010),
(3, 13, 'arifnagarroad', 'arifnagar', 'ilayangudi', 'sivagangai',
'tamilnadu', 630709, 'Mushraf', 9976293010);


insert into college1 values (1, 'JMC', '20MCA023', 04445678),
(2, 'BHC', '20MCA024', 04445679), 
(3, 'SJC', '20MCA025', 04445677);

insert into clg_address values (1, 21, 'racecourseroad', 'tvstolgate', 'trichy', 'trichy',
'tamilnadu', 620020, 'Jamal', 9976293010),
(2, 22, 'thillainagar', 'thillai', 'trichy', 'trichy',
'tamilnadu', 620020, 'Bishop', 9976293010),
(3, 23, 'chathiram', 'busstand', 'trichy', 'trichy',
'tamilnadu', 620020, 'Joseph', 9976293010);
