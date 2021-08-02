CREATE DATABASE AIR_FORCE_MANAGEMENT_SYSTEM;


create table Air_Force_Departments
(
	Dept_ID varchar(50) NOT NULL
	primary key (Dept_ID),

	Dept_Name varchar(50) NOT NULL,
	Dept_Head varchar(50),
	Dept_Budget int,
	Dept_PhoneNumber int NOT NULL,
	Dept_ExtentionNumber int NOT NULL,
	Dept_NumberOfWorkers int NOT NULL,
);


CREATE TABLE Air_Force_Planes (
	Plane_Code int NOT NULL Primary Key,
	
	Plane_Name varchar(20) NOT NULL,
	Quantity NUMERIC NOT NULL,
	Included_Into_Squad NUMERIC,
	Worker_CNIC varchar(50) NOT NULL,
);


create table MaintinenceTeam(
	Worker_CNIC varchar(50) NOT NULL
	primary key(Worker_CNIC),

	Worker_Name varchar(50) NOT NULL,
	Worker_age int,
	gender VARCHAR(1),
	Worker_Address VARCHAR(50) NOT NULL,
	Worker_phonenumber int NOT NULL,
	Worker_Education varchar(50),
	Plane_Code int references Air_Force_Planes(Plane_Code) NOT NULL,
);


create table Air_Force_Pilots (
	Pilot_Id int NOT NULL primary key,
	Pilot_Name varchar(30) NOT NULL,
	Pilot_Rank varchar(20) NOT NULL,
	Dept_ID varchar(50) references Air_Force_Departments(Dept_ID) NOT NULL,
	Plane_Code int references Air_Force_Planes(Plane_Code) NOT NULL,
);

create table Air_Force_Cadets (
	Course_no varchar(10) NOT NULL,
	Cadet_Name varchar (20) NOT NULL,
	Cadet_ID int NOT NULL primary key,
	Joining_Date date,
	Passing_OutDate date,
	Term int
);

CREATE TABLE UPDATED_PILOTS (
	Pilot_Id int,
	Pilot_Name varchar(50),
	Pilot_Rank varchar(50),
	Dept_ID varchar(50),
	Plane_Code int,
	Date_Updated datetime,
);


CREATE TABLE INSERTED_PLANES (
	Plane_Code int,
	Plane_Name varchar(50),
	Quantity int,
	Included_Into_Squad int,
	Worker_CNIC varchar(50),
	Action_Output varchar(50),
	Date_Time datetime,
);


CREATE TABLE INSERTED_PILOTS (
	Pilot_Id int,
	Pilot_Name varchar(50),
	Pilot_Rank varchar(50),
	Dept_ID varchar(50),
	Plane_Code int,
	Action_Output varchar(50),
	Date_Time datetime,
);


CREATE TABLE DELETED_PILOTS (
	Pilot_Id int,
	Pilot_Name varchar(50),
	Pilot_Rank varchar(50),
	Dept_ID varchar(50),
	Plane_Code int,
	Action_Output varchar(50),
	Date_Time datetime,
);


CREATE TABLE UPDATED_CADETS (
	Course_no varchar(50),
	Cadet_Name varchar(50),
	Cadet_id varchar(50),
	Joining varchar(50),
	Passing varchar(50),
	term int,
	Action_Output varchar(50),
	Date_Time datetime,
);

CREATE TABLE INSERTED_CADETS (
	Course_no varchar(50),
	Cadet_Name varchar(50),
	Cadet_id varchar(50),
	Joining varchar(50),
	Passing varchar(50),
	term int,
	Action_Output varchar(50),
	Date_Time datetime,
);


CREATE TABLE DELETED_CADETS (
	Course_no varchar(50),
	Cadet_Name varchar(50),
	Cadet_id varchar(50),
	Joining varchar(50),
	Passing varchar(50),
	term int,
	Action_Output varchar(50),
	Date_Time datetime,
);



insert into Air_Force_Cadets values ('GDP 150','Adnan Qureshi',1001,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Aslam Muslim',1002,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Aisha Qasim',1003,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Subhan Khan',1004,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Usama Qasim',1005,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Karam  Din',1006,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Wasim Akram',1007,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Shahid Afridi',1008,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Kamran Akmal',1009,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Tipu Shah',1010,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Mubashir Ali',1011,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Ali Rajput',1012,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Sana Sheikh',1013,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Laiba Ali',1014,'2020/01/10','2022/01/10',1);
insert into Air_Force_Cadets values ('GDP 150','Tom Cruise',1015,'2020/01/10','2022/01/10',1);
select * from Air_Force_Cadets



insert into Air_Force_Departments values ( 'PAF-001', 'Military Personnel', 'Sheikh Rashid', 38954308, 1234576, 010, 10);
insert into Air_Force_Departments values ( 'PAF-002', 'Operation and Maintenance', 'Ch Shujaat', 61407391, 7234576, 020, 12);
insert into Air_Force_Departments values ( 'PAF-003', 'Procurement', 'Rana Sana ullah', 50541275, 2734576, 030, 15);
insert into Air_Force_Departments values ( 'PAF-004', 'Training Pilots', 'Fawad chaudhry', 40492614, 2743576, 040, 9);
insert into Air_Force_Departments values ( 'PAF-005', 'Military Construction', 'Bilawal Bhutto', 2303699, 2743675, 050, 7);
insert into Air_Force_Departments values ( 'PAF-006', 'Professional Pilots', 'Muhammad Asif', 395720, 2743675, 050, 8);
insert into Air_Force_Departments values ( 'PAF-007', 'Revolving and Management Funds', 'Bilawal Bhutto', 77644, 2743675, 050, 9);




INSERT INTO Air_Force_Planes VALUES (101, 'F-16', 85, 1978, '6110182439345');
INSERT INTO Air_Force_Planes VALUES (102, 'JF-17', 109, 2007, '6110182439346' );
INSERT INTO Air_Force_Planes VALUES (103, 'Mirage III', 135, 1961,'6110182439347' );
INSERT INTO Air_Force_Planes VALUES (104, 'Mirage-V', 139, 1969, '6110182439348' );
INSERT INTO Air_Force_Planes VALUES (105, 'Chengdu F-7', 180, 1980, '6110182439342');
INSERT INTO Air_Force_Planes VALUES (106, 'Hongdu K8', 60, 1994, '6110182439341');
INSERT INTO Air_Force_Planes VALUES (107, 'Cessna T-37', 73, 1957, '6110182439348');
INSERT INTO Air_Force_Planes VALUES (108, 'MFI-17', 151, 1981, '6110182439342');
INSERT INTO Air_Force_Planes VALUES (109, 'AAI RQ-7', 88, 2002, '6110182439310');
INSERT INTO Air_Force_Planes VALUES (110, 'CASA CN-235', 75, 1998, '6110182439311' );
INSERT INTO Air_Force_Planes VALUES (111, 'AUTONOV AN-26', 54, 1969, '6110182439312' );
INSERT INTO Air_Force_Planes VALUES (112, 'Beechcraft C-12', 110, 1954, '6110182439315');
INSERT INTO Air_Force_Planes VALUES (113, 'Boeing 707', 66, 1978, '6110182439319');
INSERT INTO Air_Force_Planes VALUES (114, 'Lockheed C-130', 258, 1956, '6110182439319');
INSERT INTO Air_Force_Planes VALUES (115, 'NESCOM Buraq', 84, 2015, '6110182439316');
INSERT INTO Air_Force_Planes VALUES (116, 'Super Mushshak', 105, 1996, '6110182439317');
INSERT INTO Air_Force_Planes VALUES (117, 'Saab 2000', 145, 1994, '6110182439317');
INSERT INTO Air_Force_Planes VALUES (118, 'Saab E-2000', 202, 1996, '6110182439318');
INSERT INTO Air_Force_Planes VALUES (119, 'Satuma Jasoos', 54, 2005, '6110182439320');
INSERT INTO Air_Force_Planes VALUES (120, 'Shaanxi Y-8', 80, 1981, '6110182439316');
INSERT INTO Air_Force_Planes VALUES (121, 'J-10', 110, 1980, '6110182439316');



insert into Air_Force_Pilots values(201,'Muhammad Alam','Flight Lt', 'PAF-006', 105 );
insert into Air_Force_Pilots values(202,'Munir Ahamed','Flight Lt', 'PAF-006', 110 );
insert into Air_Force_Pilots values(203,'Muhammad Waseem','Flight Lt', 'PAF-004', 108 );
insert into Air_Force_Pilots values(204,'Rashid Minhas','Air Commodore', 'PAF-006', 101 );
insert into Air_Force_Pilots values(205,'Abhinandan Varthaman','Wing Commander', 'PAF-006', 112 );
insert into Air_Force_Pilots values(206,'Abbas Khattak','Group Captain', 'PAF-004', 115 );
insert into Air_Force_Pilots values(207,'Chishti Mujahid','Flight Lt', 'PAF-006', 102 );
insert into Air_Force_Pilots values(208,'Fawad Alam','Flight Lt', 'PAF-006', 109 );
insert into Air_Force_Pilots values(209,'Faiz Amir','Air Commodore', 'PAF-004', 118 );
insert into Air_Force_Pilots values(210,'Mubasshir Zaidi','Air Commodore', 'PAF-004', 108 );
insert into Air_Force_Pilots values(211,'Nouman Ahmed','Wing Commander', 'PAF-006', 120 );
insert into Air_Force_Pilots values(212,'Lalak Jan','Group Captain', 'PAF-004', 121 );
insert into Air_Force_Pilots values(213,'Mujahid Nadeem','Flight Lt', 'PAF-006', 113 );
insert into Air_Force_Pilots values(214,'Alam Saeed','Flight Lt', 'PAF-004',117 );
insert into Air_Force_Pilots values(215,'Fayaaz Haider','Air Commodore', 'PAF-004', 106 );
insert into Air_Force_Pilots values(216,'Zaid Ali','Air Commodore',0, 114 );
insert into Air_Force_Pilots values(217,'Ahmed Mustafa','Wing Commander',0, 107 );
insert into Air_Force_Pilots values(218,'Qasim Saad','Group Captain', 0,111 );

select * from Air_Force_Pilots

INSERT INTO MaintinenceTeam VALUES ('6110182439345', 'Ahmad Bilal Khan', 20, 'M', 'i-10',0514445757,'Occupational Science in Aviation Maintenance Technology',101);
INSERT INTO MaintinenceTeam VALUES ('6110182439346', 'Haris Javed', 21, 'M', 'i-10',0514445751,'Applied Science in Aviation Maintenance Technology',102);
INSERT INTO MaintinenceTeam VALUES ('6110182439347', 'Shazaib Khan', 22, 'F', 'i-10',0514445752,'Applied Science in Aviation Maintenance',103);
INSERT INTO MaintinenceTeam VALUES ('6110182439348', 'Ch.Muhammad Hamza Javed', 23, 'M', 'i-10',0514445753,'BS Aviation Management (BSAM)',104);
INSERT INTO MaintinenceTeam VALUES ('6110182439349', 'Sibbi 16', 24, 'M', 'i-11',0514445754,' Aircraft Maintenance Engineering Technology',105);
INSERT INTO MaintinenceTeam VALUES ('6110182439341', 'Adnan Gondal', 24, 'F', 'i-11',0514445755,'Occupational Science in Aviation Maintenance Technology',106);
INSERT INTO MaintinenceTeam VALUES ('6110182439342', 'Arslan Ali ', 25, 'M', 'i-11',0514445756,'Applied Science in Aviation Maintenance Technology',107);
INSERT INTO MaintinenceTeam VALUES ('6110182439343', 'Naeem-ul-Hassan', 26, 'M', 'i-11',0514445758,'Applied Science in Aviation Maintenance',108);
INSERT INTO MaintinenceTeam VALUES ('6110182439344', 'Umair Akhtar', 27, 'M', 'i-12',0514445759,'BS Aviation Management (BSAM)',109);
INSERT INTO MaintinenceTeam VALUES ('6110182439310', 'Mubashir Ahmad ', 28, 'F', 'i-12',0514445750,'BS Aviation Management (BSAM)',110);
INSERT INTO MaintinenceTeam VALUES ('6110182439311', 'Faizan Hameed', 29, 'M', 'i-12',0514445741,'Occupational Science in Aviation Maintenance Technology',111);
INSERT INTO MaintinenceTeam VALUES ('6110182439312', 'Sardar Umair', 30, 'M', 'i-12',0514445742,'Applied Science in Aviation Maintenance Technology',112);
INSERT INTO MaintinenceTeam VALUES ('6110182439313', 'Abdu Rafay', 31, 'M', 'i-13',0514445743,'Applied Science in Aviation Maintenance',113);
INSERT INTO MaintinenceTeam VALUES ('6110182439314', 'Adil ALvi', 32, 'F', 'i-13',0514445744,'BS Aviation Management (BSAM)',114);
INSERT INTO MaintinenceTeam VALUES ('6110182439315', 'GM', 33, 'M', 'i-13',0514445745,'BS Aviation Management (BSAM)',115);
INSERT INTO MaintinenceTeam VALUES ('6110182439316', 'Hassan Latif', 34, 'M', 'i-13',0514445746,'Occupational Science in Aviation Maintenance Technology',116);
INSERT INTO MaintinenceTeam VALUES ('6110182439317', 'M. Usama Pindi', 35, 'M', 'i-13',0514445747,'Applied Science in Aviation Maintenance Technology',117);
INSERT INTO MaintinenceTeam VALUES ('6110182439318', 'Faisal Ahmed ', 36, 'F', 'i-14',0514445748,'Applied Science in Aviation Maintenance',118);
INSERT INTO MaintinenceTeam VALUES ('6110182439319', 'Mamoon Khattak', 37, 'M', 'i-15',0514445749,'BS Aviation Management (BSAM)',119);
INSERT INTO MaintinenceTeam VALUES ('6110182439320', 'Suleiman Rehamn', 38, 'F', 'i-15',0514445731,'BS Aviation Management (BSAM)',120);


select * from MaintinenceTeam




