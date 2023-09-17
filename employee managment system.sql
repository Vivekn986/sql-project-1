create table employee(
emp_id int primary key auto_increment ,
fname varchar( 30 ), 
lname varchar(30),
gender varchar(30),
age int ,
contact bigint ,
emp_email varchar(30),
address varchar(20),
emp_pass varchar(30));

DESC EMPLOYEE;

create table job_department(
job_id int primary key auto_increment ,
job_dept varchar(30),
job_name varchar(30),
descriptions varchar(30),
salary_range  varchar(30)) ;

DESC job_department;

create table salary(
salary_id int primary key auto_increment,
job_id int ,
amount int,
annual_expense  int,
bonus  int ,
foreign key (job_id) references job_department(job_id) on delete cascade on update cascade );

DESC SALARY;


create table qualification(
qual_id int primary key auto_increment ,
emp_id int,
positions varchar(30),
requirement varchar(30),
date_in date,
foreign key (emp_id) references employee(emp_id)  on delete cascade on update cascade ) ;

DESC qualification;

create table leaves(
leave_id int primary key auto_increment ,
emp_id int,
date_leave date,
reason text,
foreign key (emp_id) references employee(emp_id)  on delete cascade on update cascade ) ;

DESC leaves;

create table payroll(
payroll_id int primary key auto_increment ,
emp_id int,
job_id int ,
salary_id int ,
leave_id int,
date_payroll date,
report text,
total_amount  int,
foreign key (emp_id) references employee(emp_id) ,
foreign key (job_id) references job_department(job_id)   ,
foreign key (salary_id) references salary(salary_id)   ,
foreign key (leave_id) references leaves(leave_id) );

DESC payroll;

alter table employee
modify contact bigint;






insert into employee (fname,lname,gender,age,contact,emp_email,address,emp_pass)
values ('vivek','nayak','m',24 ,8324882348,'vivek@gmail.com','thane','ewt242'),
('john','smith','m',22 ,5632335325,'john@gmail.com','usa','retgew34'),
('jane','doe','m',27 ,9343534523,'jane@gmail.com','usa','sfgrfw43'),
('michael','john','m',29 ,9454523423,'michae@gmail.com','nyc','dsgfsf34'),
('emily','william','f',24 ,9324435345,'emily34@gmail.com','ca','gfdge32'),
('david','brown','m',28 ,967563454,'david3@gmail.com','nyc','erwr344'),
('michael','william','m',39 ,956344432,'michael@gmail.com','aus','dsgf342'),
('ajay','rao','m',28 ,89967553,'ajay4@gmail.com','mum','sef342'),
('archana','archarya','f',24 ,97563234,'archana@gmail.com','uk','dfr2123'),
('prashant','ranjan','m',34 ,809685746,'prashant4@gmail.com','goa','aefdqe21'),
('dilip','sharma','m',32 ,9677523423,'dilip3@gmail.com','delhi','erfwer11'),
('vineet','ashish','m',18 ,97674542,'ashish3@gmail.com','mum','q3e313'),
('indira','singh','f',19 ,978389767,'indira@gmail.com','haryana','tete13'),
('mahesh','singh','m',21 ,968634312,'mahesh3@gmail.com','punjab','tyh3453');

SELECT * FROM EMPLOYEE;

insert into job_department (job_dept,job_name,descriptions, salary_range)
values ('human resources','manager','finance','aroud 300000'),      
('data analyst','analyst','analysis','aroud 234300'),
('banking','clerk','office work','aroud 500000'),
('data science','manager','anaysis','aroud 240000'),
('marketing','manager','sales','aroud 660000'),
('banking','manager','audit','aroud 500000'),
('machine learning ','technical','analyst','aroud 600000'),
('civil engineer','technical','construction','aroud 300000'),
('customer service','technical','call center','aroud 250000'),
('java developer','manager','developer','aroud 700000'),
('business analyst','techical','analysis','aroud 440000'),
('mechanical engineer','design ','designing','aroud 200000'),
('civil engineer','production','quality control','aroud 750000'),
('mechanical engineer','automation','machine','aroud 850000');

insert into salary (job_id,amount,annual_expense, bonus)
values (3,500000,200000,20000),
(5,700000,300000,40000),
(9,300000,100000,13000),
(14,900000,400000,34000),
(10,750000,350000,30000),
(8,400000,200000,15000),
(13,800000,500000,45000),
(7,600000,400000,30000),
(4,300000,200000,14000),
(12,200000,150000,10000),
(1,300000,150000,12000),
(6,550000,500000,20000),
(2,250000,200000,10000),
(11,450000,400000,30000);

insert into qualification (emp_id,positions,requirement, date_in)
values(8,'analyst','analysis','2020-04-13'),
(3,'clerk','ofc work','2019-07-30'),
(11,'design','design','2023-04-20'),
(14,'automation','auto machine','2021-05-17'),
(10,'developer','develop','2018-09-19'),
(5,'manager','sales','2018-04-1'),
(13,'technical','customer','2022-09-30'),
(7,'analyst','analysis','2022-05-25'),
(4,'manager','analysis','2017-10-01'),
(2,'analyst','analysis','2022-02-13'),
(1,'manager','finance','2023-02-12'),
(6,'manager','banking','2021-08-13'),
(12,'production','quality control','2020-04-25'),
(9,'technical','construction','2022-12-27');

insert into leaves (emp_id,date_leave,reason)
values(2,'2022-07-21','fever'),
(5,'2022-07-21','personal'),
(7,'2022-07-16','emergency'),
(8,'2021-04-21','health issue'),
(12,'2020-04-21','body pain'),
(10,'2019-02-21','personal'),
(9,'2023-02-02','emergency'),
(2,'2023-01-12','family problem'),
(3,'2020-03-18','fever'),
(13,'2023-5-21','personal leave'),
(14,'2022-03-21','fever'),
(1,'2023-05-21','emergency '),
(4,'2018-05-21','personal'),
(6,'2023-01-21','fever'),
(11,'2023-05-20','not well'),
(13,'2023-08-21','emergency '),
(7,'2022-12-13','personal'),
(5,'2019-09-21','fever');


insert into payroll (emp_id,job_id,salary_id,leave_id,date_payroll,report,total_amount)
values(1,1,11,12,'2023-01-30','manager',300000),
(2,2,13,1,'2022-01-30','manager',300000),
(3,3,1,9,'2019-07-15','hr',540000),
(4,4,9,13,'2017-09-01','hr',350000),
(5,5,2,2,'2018-03-09','manager',760000),
(6,6,12,14,'2021-07-25','hr',600000),
(7,7,11,17,'2022-05-15','ceo',700000),
(8,11,14,4,'2020-04-08','md',500000),
(9,8,6,7,'2022-12-20','hr',500000),
(10,10,5,6,'2018-09-01','manager',800000),
(11,12,10,15,'2023-04-10','technical member',300000),
(12,13,7,5,'2020-04-05','director',800000),
(13,9,3,10,'2022-09-25','md',350000),
(14,14,4,11,'2021-05-10','hr',1000000),
(2,2,13,8,'2022-01-30','manager',300000),
(5,5,2,18,'2018-03-09','manager',700000),
(7,7,11,3,'2022-05-15','ceo',700000),
(13,9,3,16,'2022-09-25','md',350000);



select * from employee;

select * from qualification;

select * from job_department;

select * from salary;

select * from leaves;

select * from payroll;



alter table employee
add column pincode int;

DESC EMPLOYEE;

update employee
set pincode = 21313 where emp_id=2;

alter table employee
drop column pincode ;

DESC EMPLOYEE;

UPDATE employee
SET FNAEM

select * from employee;



alter table employee 
change  emp_email  email_id char(40); 


select * from employee;

alter table employee
modify email_id char(40) unique;


desc employee;


select emp_id,concat(fname ,' ', lname) AS FIRST_NAME FROM EMPLOYEE;


select SUBSTRING(FNAME,3,4) FROM EMPLOYEE;



select LENGTH(FNAME) AS FNAME FROM EMPLOYEE;

select AVG(AGE) FROM EMPLOYEE;

select COUNT(AGE) AS SUM FROM EMPLOYEE;


select SUBSTRING('RERSEF',3,4) ;

# show the details of employee who join after year 2022 
select e.emp_id,e.fname,e.emp_email ,q.positions,q.date_in from employee e inner join EMPLOYEE_DETAILS q on e.emp_id=q.emp_id where year(date_in)>2021;

select  e.emp_id,e.fname,e.emp_email ,j.job_dept,p.total_amount  from employee e inner join payroll p on e.emp_id=p.emp_id 
 inner join job_department j on j.job_id = p.job_id order by total_amount  desc limit 3 ;
 
 select  e.emp_id,e.fname,e.emp_email ,j.job_dept,count(p.total_amount)from employee e inner join payroll p on e.emp_id=p.emp_id 
 inner join job_department j on j.job_id = p.job_id group by p.total_amount  having count(p.total_amount)>1;



update employee
set fname='pritam' where emp_id=14;

SELECT * FROM EMPLOYEE;


desc employee;

alter table employee 
change column email_id email varchar(30);

DESC EMPLOYEE;

alter table employee 
modify column age int not null;

desc employee;

ALTER TABLE QUALIFICATION
RENAME EMPLOYEE_DETAILS;

desc EMPLOYEE_DETAILS;

drop table qualification ;

select * from employee where gender = 'm';

select * from employee where AGE > 25;

select e.fname,e.age,p.total_amount from employee e inner join payroll p on e.emp_id=p.emp_id where p.total_amount between 300000 and 500000 ;


select emp_id,fname,lname,age,gender  from employee where fname between 'a' and 'm';

select * from employee limit 5;

select * from employee limit 5,4;

select * from job_department where  job_dept like '%analyst';

select * from job_department where  job_dept like 'm%';

select e.emp_id,e.fname,e.age,p.total_amount from employee e inner join payroll p on e.emp_id=p.emp_id order by p.total_amount desc ;

SELECT * FROM EMPLOYEE ORDER BY FNAME ASC;


select  distinct job_name  from  job_department;

select e.fname,e.age,p.total_amount from employee e LEFT join payroll p on e.emp_id=p.emp_iD;

select e.emp_id,e.fname,e.emp_email ,q.positions,q.date_in from employee e INNER join EMPLOYEE_DETAILS q on e.emp_id!=q.emp_id;