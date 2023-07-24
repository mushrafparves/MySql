create schema mushraf;
use mushraf;

create table empsngl(id int, name varchar(30), age int, email varchar(30), Fname varchar(20), Lname varchar(20),
DoorNo int, Street varchar(20), Area varchar(10), City varchar(10), District varchar(10),State varchar(10), PinCode int, Country varchar(10),
School_Id int, School_Name varchar(25), School_Code varchar(10), School_TelNo bigint, School_Door_No int,
School_Street varchar(20), School_Area varchar(20), School_City varchar(20), School_District varchar(20), School_State varchar(20),
School_PinCode int, School_Owner_Name varchar(20), School_MobileNo bigint,
College_Id int primary key, College_Name varchar(25), College_Code varchar(10), College_TelNo bigint,
College_Door_No int, College_Street varchar(20), College_Area varchar(20), College_City varchar(20), 
College_District varchar(20), College_State varchar(20),College_PinCode int, College_Owner_Name varchar(20), College_MobileNo bigint);


select * from empsngl;
desc empsngl;


insert into empsngl values (1, 'parves_mushraf', 22,'parves@gmail.com', 'parves', 'mushraf',
21, 'zahirhussain', 'pudur', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
1, 'Anis', '17US9931', 04412341,
11, 'pudurroad', 'pudur', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
01, 'JMC', '20MCA021', 04445671,
31, 'racecourseroad', 'tvstolgate', 'trichy', 'trichy', 'tamilnadu', 620020, 'Jamal', 9976293010),


(2, 'mushraf_sulthan', 22,'mushraf@gmail.com', 'mushraf', 'sulthan',
22, 'eaststreet', 'salai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
2, 'INPT', '17US9932', 04412342,
12, 'eastroad', 'salai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293011,
02, 'BHC', '20MCA022', 04445672,
32, 'thillainagar', 'tolgate', 'trichy', 'trichy', 'tamilnadu', 620020, 'Bishop', 9976293012),


(3, 'mohamed_shiraj', 23,'shiraj@gmail.com', 'mohamed', 'shiraj',
23, 'weststreet', 'arfngr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
3, 'Vidhya', '17US9933', 04412343,
13, 'weststreet', 'arfngr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
03, 'SJC', '20MCA023', 04445673,
33, 'chathiram', 'bustop', 'trichy', 'trichy', 'tamilnadu', 620020, 'Joseph', 9976293013),


(4, 'naveen_nithiyanandan', 23,'nithya@gmail.com', 'naveen', 'nithiyananthan',
24, 'northstrt', 'knmnglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
4, 'Samath', '17US9934', 04412344,
14, 'northstrt', 'knmnglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
04, 'NTC', '20MCA024', 04445674,
34, 'dindigulroad', 'byepass', 'trichy', 'trichy', 'tamilnadu', 620020, 'National', 9976293014),


(5, 'deepan_chaku', 22,'deepan@gmail.com', 'deepan', 'chaku',
25, 'southstrt', 'tayamglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
5, 'Iqra', '17US9935', 04412345,
15, 'southstrt', 'tayamglm', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
05, 'MIET', '20MCA025', 04445675,
35, 'miet', 'pdkroad', 'trichy', 'trichy', 'tamilnadu', 620020, 'MIET', 9976293015),


(6, 'alan_stephen', 22,'alan@gmail.com', 'alan', 'stephen',
26, 'kilakkustrt', 'trvlr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
6, 'melapallivasal', '17US9936', 04412346,
16, 'kilakkustrt', 'trvlr', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
06, 'AIMAN', '20MCA026', 04445676,
36, 'kknagar', 'nagar', 'trichy', 'trichy', 'tamilnadu', 620020, 'Aiman', 9976293016),


(7, 'vignesh_waran', 22,'vicky@gmail.com', 'vignesh', 'waran',
27, 'merkustrt', 'pchyndl', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
7, 'Santhom', '17US9937', 04412347,
17, 'merkustrt', 'pchyndl', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
07, 'HCC', '20MCA027', 04445677,
37, 'malaikotai', 'theppakulam', 'trichy', 'trichy', 'tamilnadu', 620020, 'Holy', 9976293017),


(8, 'abdul_kalam', 22,'kalam@gmail.com', 'abdul', 'kalam',
28, 'vadakustrt', 'kamkrai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
8, 'Adhiyaman', '17US9938', 04412348,
18, 'vadakustrt', 'kamkrai', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
08, 'KVC', '20MCA028', 04445678,
38, 'annanagar', 'policecolony', 'trichy', 'trichy', 'tamilnadu', 620020, 'Vysak', 9976293018),


(9, 'mohamed_refai', 22,'refai@gmail.com', 'mohamed', 'refai',
29, 'therkustrt', 'sotugudi', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
9, 'Srimathi', '17US9939', 04412349,
19, 'therkustrt', 'sotugudi', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
09, 'MCC', '20MCA029', 04445679,
39, 'madras', 'chennai', 'trichy', 'trichy', 'tamilnadu', 620020, 'Madras', 9976293019),


(10, 'ibu_ibraheem', 22,'ibraheem@gmail.com', 'ibu', 'ibraheem',
30, 'nehrustrt', 'sathani', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'india',
10, 'MWA', '17US9940', 04412350,
20, 'nehrustrt', 'sathani', 'ilayangudi', 'sivagangai', 'tamilnadu', 630709, 'Ibrahim', 9976293010,
010, 'MCE', '20MCA030', 04445680,
40, 'burma', 'colony', 'trichy', 'trichy', 'tamilnadu', 620020, 'Burma', 9976293010);


alter table empsngl modify column name varchar(35);

alter table empsngl change Fname First_Name varchar(20);

alter table empsngl change Lname Last_Name varchar(18);
