use excersice;
create table students (id int, name varchar(20), age int, email varchar(50), marks int, ranks int);
insert into students (id, name, age, email, marks, ranks) values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3);
insert into students (id, name, age, email, marks, ranks) values (3,'Suresh Babu',42,'suresh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (4,'Balaji',70,'bala@g.com',65,6);
insert into students (id, name, age, email, marks, ranks) values (5,'Kajith Raju',63,'kaj@g.com',40,7);
insert into students (id, name, age, email, marks, ranks) values (6,'Gowtham Kumar',47,'gow@g.com',69,5);
insert into students (id, name, age, email, marks, ranks) values (7,'Mohan Kumar',40,'moh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (8,'Harish Ram',36,'har@g.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (9,'SathyaRaj',38,'sat@g.com',99,1);
insert into students (id, name, age, email, marks, ranks) values (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);
desc students;
select * from students;
select * from students
   WHERE age between 37 and 60 
        AND (marks>45 AND name LIKE '%kumar');
        select name from students where name like '%ra%'
        and (age >40 or marks >75);
        select name from students where name like '%a%' or '%j%' or '%m%' or '%t%';
        alter table students add column last_name varchar(20) after name;
        update students set last_name = 'ashok kumar' where id = 1;
        update students set last_name = 'ganesh kumar' where id = 2;
        update students set last_name = 'dinesh kumar' where id = 3;
        update students set last_name = 'govindaras' where id = 4;
        update students set last_name = 'gopi' where id = 5;
        update students set last_name = 'kavi' where id = 6;
        update students set last_name = 'senthil kumar' where id = 7;
        update students set last_name = 'kannan' where id = 8;
        update students set last_name = 'muthu kumar' where id = 9;
        update students set last_name = 'hari' where id = 10;
        select * from students;
        select name, last_name from students where name like '%kumar%' and last_name like '%kumar%';