create schema test;
use test;


create table employe (id int primary key, first_name varchar(20), last_name varchar(20), age int);

select * from employe;
desc employe;


create table mobile (id int primary key, mbl_number bigint, operator varchar(10), plan int, emp_id int,
foreign key (emp_id) references employe(id));

select * from mobile;
desc mobile;


create table email (id int primary key, email_id varchar(25), provider varchar(20), created_date date, emp_id int,
foreign key (emp_id) references employe(id));

select * from email;
desc email;




insert into employe(id, first_name, last_name, age)values 
(1, 'parves', 'mushraf', 28),
(2, 'parves', 'ahamed', 29),
(3, 'ibu', 'ibraheem', 18),
(4, 'siraj', 'mohamed', 20),
(5, 'siraj', 'mohamed', 22),
(6, 'deepan', 'chakku', 26),
(7, 'chakku', 'deepan', 30),
(8, 'mushraf', 'parves', 35),
(9, 'mushraf', 'sulthan', 46),
(10, 'vicky', 'vignesh', 50);



/*select * from employe where (age between 25 and 35) or salary>20000 group by first_name having count(first_name)>1 
order by first_name desc;*/

truncate mobile;
insert into mobile(id, mbl_number, operator,plan, emp_id) values
(1, 9360913978, 'jio', 666,1),
(2, 9360913978, 'jio', 149,1),
(3, 9360913978, 'airtel', 719,1),
(4, 9360913976, 'airtel', 719,2),
(5, 9360913976, 'bsnl', 666,2),
(6, 9360913976, 'bsnl', 249,2),
(7, 9360913976, 'vi', 149,2),
(8, null, 'docomo', 555,3),
(9, 9360913972, 'aircel', 619,4),
(10, 9360913972, 'aircel', 666,4);


truncate email;
insert into email(id, email_id, provider, created_date, emp_id) values 
(11, 'parves@gmail.com', 'google', '2022-03-22',1),
(22, 'parves@gmail.com', 'google', '2022-03-28',1),
(33, 'parves@gmail.com', 'google', '2022-05-21',1),
(44, 'siraj@outlook.com', 'outlook', '2022-03-06',2),
(55, 'siraj@outlook.com', 'outlook', '2022-03-06',2),
(66, 'deepan@yahoo.com', 'yahoo', '2022-03-25',3),
(77, 'chakku@hotmail.com', 'hotmail', '2022-03-26',null),
(88, 'mushraf@icloud.com', 'icloud', '2022-03-27',4),
(99, 'mushraf@icloud.com', 'icloud', '2022-03-22',4),
(100, 'divan@vmail.com', 'vmail', '2022-03-21',null);



select * from employe e inner join mobile m on e.id=m.id;
select * from employe e inner join email em on e.id=em.id;


select e.id,e.first_name,count(m.mbl_number) as mobile_count 
from employe as e left join mobile as m on e.id=m.emp_id group by e.id;



select e1.id,e1.first_name,e1.mobile_count,e2.email_count from (select e.id,e.first_name,count(m.mbl_number) as mobile_count 
from employe as e left join mobile as m on e.id=m.emp_id group by e.id) as e1 inner join (select e.id,e.first_name,count(em.email_id) 
as email_count from employe as e left join email as em on e.id=em.emp_id group by e.id) as e2 on e1.id=e2.id;


select e.id,e.last_name ,count(m.mbl_number) as duplicate_mbl_count  from employe as e inner join mobile as m on e.id=m.emp_id
group by m.emp_id having count(m.emp_id) > -1 ;

select e.id,e.first_name ,count(em.email_id) as duplicate_email_count  from employe as e inner join email as em on e.id=em.emp_id
group by em.emp_id having count(em.emp_id) > -1 ;


select  distinct p1.id,p1.first_name,p1.mobile_count,p1.duplicate_mbl_count,p2.email_count,p2.duplicate_email_count from 
(select id,first_name,mobile_count,if(mobile_count>duplicate_count,mobile_count-duplicate_count,0) as duplicate_mbl_count from 
(select e.id, e.first_name,count(distinct(m.mbl_number)) as duplicate_count,count(m.mbl_number) as mobile_count from employe as e 
left outer join mobile as m on e.id=m.emp_id   group by e.id)as result1) as p1
inner join
(select id,first_name,email_count,if(email_count>duplicate_count,email_count-duplicate_count,0)as duplicate_email_count from 
(select e.id, e.first_name,count(distinct(el.email_id)) as duplicate_count,count(el.email_id) as email_count from employe as e 
left outer join email as el on e.id=el.emp_id   group by e.id)as result2) as p2 on
p1.id=p2.id;