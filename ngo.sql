create database ngo_project_ns;
use ngo_project_ns;

create table employee(
emp_id numeric(6) primary key,
emp_name varchar(35) not null,
emp_phone numeric(10) not null,
emp_email varchar(40) not null);


create table volunteer(
certification char(2) not null,
hours_worked numeric(3) not null,
emp_id numeric(6) not null,
foreign key(emp_id) references employee(emp_id)
);

create table admin(
salary numeric(6) not null,
username varchar(10) not null,
password varchar(8) not null,
emp_id numeric(6) not null,
foreign key(emp_id) references employee(emp_id)
);

create table branch(
branch_id numeric(6) primary key, 
location varchar(20) not null,
no_of_needy_people numeric(4) not null, 
no_of_employees numeric(2) not null);

create table underpriveleged_people(
aadhar_no numeric(12) primary key, 
dob date not null, 
date_of_entry date not null, 
n_name varchar(15) not null, 
n_age numeric(2) not null, 
level_of_edu varchar(10) not null, 
sex char(2) not null
);

create table donations(
type varchar(15) not null,
amount numeric(5) not null);

create table expenditure(
type varchar(15) not null,
amount numeric(5) not null);

create table medical_records(
weight numeric(3) not null, 
blood_type varchar(3) not null, 
injuries varchar(10), 
surgeries varchar(10), 
allergies varchar(10), 
pre_existing_cond varchar(10), 
aadhar_no numeric(12) not null,
foreign key(aadhar_no) references underpriveleged_people(aadhar_no)
);

create table dependents(
d_aadhar_no numeric(12) primary key, 
d_name varchar(20) not null, 
d_age numeric(2) not null, 
relationship varchar(10) not null
);

create table skills(
skill_id varchar(8) primary key not null,
aadhar_no numeric (12) not null,
foreign key(aadhar_no) references underpriveleged_people(aadhar_no)
);


CREATE TABLE TECHNICAL(
SKILL_NAME VARCHAR(10) NOT NULL,
EXPERIENCE NUMERIC NOT NULL,
CERTIFICATE CHAR(2),
SKILL_ID VARCHAR(8) NOT NULL,
FOREIGN KEY(SKILL_ID) REFERENCES SKILLS(SKILL_ID));


CREATE TABLE NON_TECHNICAL(
SKILL_NAME VARCHAR(10) NOT NULL,
EXPERIENCE NUMERIC NOT NULL,
CERTIFICATE CHAR(2),
SKILL_ID VARCHAR(8) NOT NULL,
FOREIGN KEY(SKILL_ID) REFERENCES SKILLS(SKILL_ID));

CREATE TABLE jobs(
duration_of_emp NUMERIC NOT NULL,
company_name VARCHAR(20),
SKILL_ID VARCHAR(8) NOT NULL,
FOREIGN KEY(SKILL_ID) REFERENCES SKILLS(SKILL_ID));

create table account(
acc_no numeric primary key,
acc_type varchar(10)
); 

show tables;

insert into employee values (121669, 'Imara Dubey', 2345436547, 'imadub69@gmail.com'),
(121768, 'Esha Madan', 8798765675, 'eshmad68@gmail.com'),
(121989, 'Bina Ganguly', 8767897654, 'bingan89@gmail.com'),
(121998, 'Chhaya Das', 2938929489,  'chhdas98@gmail.com'),
(121847, 'Daksha Iyer', 3847383748,  'dakiye47@gmail.com'),
(121343, 'Divya Malhotra', 2837483728, 'divmal43@gmail.com'),
(121338, 'Harleen Deol', 2839382993, 'hardeo38@gmail.com'),
(121883, 'Heena Lal', 2837483627, 'heelal83@gmail.com'),
(121227, 'Ishita Deshpande', 2837487367, 'ishdes27@gmail.com'),
(121836, 'Jhalak Dutt', 2283399872, 'jhadut36@gmail.com'),
(232876, 'Ashish Bhardwaj', 5000076578, 'ashishbwaj@gmail.com'),
(665783, 'Aman Matang', 468000743, 'amanmatang12@gmail.com'),
(767898, 'Ananaya Purohit', 5000099876,'ananya11@yahoo.com'),
(209033, 'Jeremy True', 9809835000, 'jeremytrue@yahoo.com'),
(747393, 'Andrew Tate', 9000645670, 'andretop@gmail.com'),
(747394, 'Anaj esha', 9065080880, 'anajesh@gmail.com'),
(747395, 'Anand Aram', 1200098654, 'araman@gmail.com'),
(747396, 'Drew Goodman', 2209901250, 'drewg@gmail.com'),
(747397, 'Felix King', 2209640980, 'pewdie@gmail.com'),
(747398, 'Kurtis Conner',4032158033, 'kurtiscon@gmail.com');

select*from employee;

insert into volunteer values ( 'Y', 15, 121669 ),
( 'Y', 21, 121768),
( 'N', 16, 121989),
( 'Y', 18, 121998),
( 'N', 20, 121847),
( 'Y', 18,  121343),
( 'Y', 13, 121338),
( 'N', 10, 121883),
( 'N', 9, 121227),
( 'Y', 18, 121836)
;

select*from volunteer;


insert into admin values  (50000, 'bing21', 'ashishb', 232876),
( 46800, 'bondpass', 'amanmat', 665783),
( 50000, 'nogopass', 'ananypu',767898),
( 35000, 'myngo', 'jeretrue',209033),
( 90000, 'topg', 'andtate',747393),
( 90000, 'toopass', 'anajesh',747394),
( 1200, 'anuj', 'araman',747395),
(22000, 'pgpass', 'drewg',747396),
( 22000, 'gokul11', 'pewdie',747397),
( 40033, 'goatman', 'kurtis',747398);

select*from admin;

insert into branch values
(11234, 'Vile Parle', 350, 50),
(11283, 'Mulund', 450, 55),
(11290, 'Powai', 334, 49),
(11287, 'Malad', 318, 39),
(11275, 'Andheri', 323, 41),
(11238, 'Kandivali', 427, 48),
(11292, 'Churchgate', 210, 37),
(11247, 'Juhu', 299, 40),
(11233, 'Borivali', 376, 45),
(11284, 'Ghatkopar', 389, 42);

select*from branch;

insert into underpriveleged_people values
(394878900098, '1997-09-01', '2023-01-04', 'Nirupama Jha', 25, '12th', 'F'),
(887537446529, '1998-12-04', '2023-01-09', 'Shreya Chadha', 25, '12th', 'F');


insert into underpriveleged_people values
(998711120936, '2001-09-12', '2023-01-03', 'Purnima Sule', 21, 'Undergrad', 'F'),
(576483976582, '2004-02-24', '2023-01-6', 'Priti Lala', 19, '12th', 'F'),
(026374668594, '2003-02-13', '2023-01-19', 'Indira Muni', 20, '12th', 'F'),
(564738295768, '1999-05-12', '2023-07-30', 'Shanti Apte', 24, 'Undergrad', 'F'),
(561733285738, '2003-10-13', '2023-01-13', 'Tanu Bhandari', 23, '10th', 'F'),
(078296428496, '1998-03-14', '2023-01-20', 'Anusha Menon', 25, '12th', 'F'),
(563748564756, '2000-07-23', '2023-01-22', 'Ila Bassi', 23, 'Undergrad', 'F'),
(495758557892, '2002-10-10', '2023-11-11', 'Sona Tripathi', 21, '12th', 'F');

select*from underpriveleged_people;

insert into donations values
('money',50000),
('socks',9),
('food',18),
('bedsheets',25),
('pillows',30),
('pencils',100),
('money',25000),
('clothes',45),
('toiletries',50),
('toys',30);

select*from donations;

insert into expenditure values 
('supplies',5000),
('water',5500),
('electricity',6000),
('rent',13000),
('salary',40000),
('food',25000),
('disposable',10000),
('maintenance',7000);

select*from expenditure;

insert into medical_records values
(48, 'A+', NULL , NULL , NULL, NULL, 394878900098),
(49, 'B+', NULL, NULL, NULL, 'Diabetes', 887537446529),
(58, 'AB+', NULL, NULL, NULL, NULL, 998711120936),
(55, 'A-', NULL, NULL, NULL, NULL, 576483976582),
(55, 'B+', 'bruises', NULL, NULL, NULL, 026374668594),
(51, 'A+', NULL, NULL, 'dust', NULL, 564738295768),
(53, 'B+', NULL, NULL, NULL, NULL, 561733285738),
(43, 'AB-', NULL, NULL, 'dust', NULL, 078296428496),
(46, 'O-', NULL, NULL, NULL, NULL, 563748564756),
(50, 'O+', NULL, NULL, NULL, 'asthma', 495758557892);

select*from medical_records;

insert into dependents values
(746384973847, 'Jay Verma', 5, 'son'),
(846374638463, 'Jagruti Dewan', 10,'brother'),
(993899447578,'Mohini Rao',70,'mother'),
(229483920949,'Ojas Parekh',11,'son'),
(338477263217,'Megha Biswas',19,'sister'),
(229876457387,'Paakhi Dayal',6,'daughter’'),
(000987263748,'Ranjeet Chandra',74,'father'),
(119283728392,'Sadhana Haldar',17,'sister'),
(228376287638,'Samair Ghosh',10,'brother'),
(220984455,'Uma Mangal',13,'daughter');

select*from dependents;

insert into skills values
('SK119', 394878900098),
('SK230', 887537446529),
('SK993', 998711120936),
('SK432', 576483976582),
('SK223', 026374668594),
('SK324', 564738295768),
('SK098', 561733285738),
('SK433', 078296428496),
('SK334', 563748564756),
('SK983', 495758557892);

select*from skills;


insert into technical values
('C', 9, 'Y','SK119'),
('Python', 4, 'Y','SK230'),
('Linux', 11, 'Y','SK993'),
('Hardware', 14, 'Y','SK432'),
('Cloud', 7, 'Y','SK223');

select*from technical;

insert into non_technical values
('Management', 6, 'Y','SK324'),
('Cooking', 8, 'Y','SK098'),
('Stitching', 4, 'Y','SK433'),
('Pottery', 19, 'Y','SK334'),
('Handicraft', 9, 'Y','SK983');

select*from non_technical;

insert into jobs values
(12, 'Pixel Perfect', 'SK119'),
(15, 'Shopify', 'SK230'),
(11, 'CyberSafe', 'SK993'),
(14, 'Skanska', 'SK432'),
(12, 'Google Cloud', 'SK223'),
(13, 'Apex Consult', 'SK324'),
(10, 'Gourmet Foodies', 'SK098'),
(15, 'Event Architects', 'SK432'),
(16, 'Fiscal Pro', 'SK334'),
(14, 'Rustic Treasures', 'SK983');


select*from jobs;


Select emp_name
From employee
Where emp_id like '121%'
Order by emp_name;


Select location
From branch;

Drop table account;

(Select skill_name
From technical 
Where experience >= 7)
Union
(Select skill_name
From non_technical
Where experience >= 7);


Alter table medical_records
Drop column surgeries;

Select count(type), amount
From expenditure
Where amount < 8000
Group by amount;

SELECT certification, SUM(hours_worked) as total_hours
FROM volunteer
GROUP BY certification;

SELECT branch_id, location, no_of_needy_people 
FROM branch
ORDER BY no_of_needy_people DESC
LIMIT 1;

SELECT n_name
FROM underpriveleged_people
WHERE level_of_edu = '12th' AND sex = 'F' AND n_age > 21;

Select no_of_needy_people as no_of_underpri_people
From branch;

SELECT d_name, d_age 
FROM dependents 
WHERE d_age > 18;

SELECT type, SUM(amount) AS total_donation
FROM donations
GROUP BY type;


CREATE VIEW employee_designation AS
SELECT e.emp_id, e.emp_name, e.emp_phone, e.emp_email,
CASE WHEN v.emp_id IS NOT NULL THEN 'Volunteer'
     WHEN a.emp_id IS NOT NULL THEN 'Admin'
     ELSE 'Employee' END AS designation
FROM employee e
LEFT JOIN volunteer v ON e.emp_id = v.emp_id
LEFT JOIN admin a ON e.emp_id = a.emp_id;

desc employee_designation;


SELECT DISTINCT emp_name
FROM employee_designation
WHERE designation = 'Admin';


SELECT DISTINCT employee_designation.emp_name, admin.username
FROM employee_designation
INNER JOIN admin ON employee_designation.emp_id = admin.emp_id
WHERE designation = 'Admin' AND username LIKE '%pass%';

CREATE VIEW volunteer_with_certificate AS 
SELECT * FROM volunteer 
WHERE certification IS NOT NULL;

SELECT * FROM volunteer_with_certificate;


DELIMITER //
CREATE TRIGGER update_branch_employee_count
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    UPDATE branch
    SET no_of_employees = no_of_employees + 1
    WHERE branch_id = NEW_branch_id;
END//
DELIMITER ;

DELIMITER //

CREATE TRIGGER insert_medical_record
AFTER INSERT ON underpriveleged_people
FOR EACH ROW
BEGIN
    INSERT INTO medical_records (aadhar_no, weight, blood_type)
    VALUES (NEW.aadhar_no, 0, 'unknown');
END//

DELIMITER ;

show tables;
