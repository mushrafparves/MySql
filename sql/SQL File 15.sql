use emp;

create table student1(
id int,
name varchar(20),
department varchar(10),
age varchar(10),
email varchar(25));

alter table student1 change name First_name varchar(20);

alter table student1 add column Last_name varchar(20) after First_name;

alter table student1 modify column age int;

insert into student1 values(1, 'parves', 'MCA', 22,'parves@gmail.com'),
(2, 'mushraf', 'BCA', 22,'mushraf@gmail.com'),
(3, 'shiraj', 'MBA', 23,'shiraj@gmail.com'),
(4, 'nithya', 'MBA', 23,'nithya@gmail.com'),
(5, 'deepan', 'MSC', 22,'deepan@gmail.com'),
(6, 'alan', 'MSC', 22,'alan@gmail.com'),
(7, 'vicky', 'MCA', 22,'vicky@gmail.com'),
(8, 'ibraheem', 'BSC', 18,'ibraheem@gmail.com'),
(9, 'kalam', 'BSC', 18,'kalam@gmail.com'),
(10, 'refai', 'MSC', 21,'refai@gmail.com');

select * from student1;
desc student1;