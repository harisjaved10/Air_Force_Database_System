

/* QUERY TO GET PLANES INCLUDED INTO SQUAD AFTER 1980 */ 

SELECT Plane_Code, Plane_Name, Included_Into_Squad FROM dbo.Air_Force_Planes WHERE Included_Into_Squad > 1980;

/* QUERY TO GET WORKER CNIC OF MAINTAINACE TEAM WITH RESPECTIVE PLANES HAVING PLANE CODE LESS THAN 110 */

SELECT Worker_CNIC, Plane_Code, Plane_Name FROM dbo.Air_Force_Planes WHERE Plane_Code < 110;

/* QUERY TO GET CADETS ID AND NAMES WHICH JOINED IN 2020 AND HAVING CADET ID GREATER THAN 1010 */

SELECT Cadet_ID, Cadet_Name, Joining_Date FROM dbo.Air_Force_Cadets WHERE Joining_Date = '2020-01-10' AND Cadet_ID > 1010;

/* QUERY TO GET CADETS IDs WHOSE NAME STARTS WITH A AND ENDS AT M */

SELECT Cadet_ID, Cadet_Name, Joining_Date FROM dbo.Air_Force_Cadets WHERE Cadet_Name LIKE 'a%m' ;

/* QUERY TO GET TOTAL CADETS */

SELECT COUNT(Cadet_ID) FROM dbo.Air_Force_Cadets;

/* QUERY TO GET PROFESSIONAL PILOTS */

SELECT DISTINCT Pilot_Id, Pilot_Name, Pilot_Rank FROM dbo.Air_Force_Pilots INNER JOIN dbo.Air_Force_Departments ON Air_Force_Pilots.Dept_ID = 'PAF-006';

/* QUERY TO GET TRAINING PILOTS */

SELECT DISTINCT Pilot_Id, Pilot_Name, Pilot_Rank FROM dbo.Air_Force_Pilots INNER JOIN dbo.Air_Force_Departments ON Air_Force_Pilots.Dept_ID = 'PAF-004';

/* QUERY TO KNOW WHICH PILOTS CAN FLY WITH PLANES */

SELECT DISTINCT Pilot_Id, Pilot_Name, Plane_Name FROM dbo.Air_Force_Pilots INNER JOIN dbo.Air_Force_Planes ON Air_Force_Pilots.Plane_Code = Air_Force_Planes.Plane_Code;

/* QUERY TO KNOW WHICH PILOT CAN FLY PLANE HAVING PLANE_CODE 118 */

SELECT DISTINCT Pilot_Id, Pilot_Name, Pilot_Rank FROM dbo.Air_Force_Pilots INNER JOIN dbo.Air_Force_Planes ON Air_Force_Pilots.Plane_Code = 118;

/* Query to get Male Maintainance Team Whose Plane Code is Less than 110 and Worker Address is not I-11*/

Select * from  MaintinenceTeam where gender != 'M' and Plane_Code < 110 and Worker_Address != 'i-11'

/* Gives list of all those entries which have matching dept_id and belong to a Militrary Branch */

select Pilot_Name,Dept_Name from Air_Force_Pilots,Air_Force_Departments where Dept_Name Like 'M%' and (Air_Force_Departments.Dept_ID = Air_Force_Pilots.Dept_ID)

/* select all those department names which have workers more then nine */

select Dept_ID, Dept_Name from Air_Force_Departments where Dept_NumberOfWorkers > 9

/* select all those planes which are less then hundered in number */

select * from Air_Force_Planes where Quantity < 100 and Quantity > 1

/* query to show maintinence team workers gender*/

select Worker_CNIC,Worker_Address,gender from dbo.MaintinenceTeam where gender='f';
select Worker_CNIC,Worker_Address,gender from dbo.MaintinenceTeam where gender='m';

/* query to show maintinence team workers on particular qualification*/

select Worker_CNIC ,Worker_Name ,gender ,Worker_Address  ,Worker_Education from dbo.MaintinenceTeam where Worker_Education='Occupational Science in Aviation Maintenance Technology';
select Worker_CNIC ,Worker_Name ,gender ,Worker_Address  ,Worker_Education from dbo.MaintinenceTeam where Worker_Education='Applied Science in Aviation Maintenance';
select Worker_CNIC ,Worker_Name ,gender ,Worker_Address  ,Worker_Education from dbo.MaintinenceTeam where Worker_Education='BS Aviation Management (BSAM)';

/* query to show the maintinance worker and the plane code to show which plane he is maintaining*/

SELECT * from  MaintinenceTeam inner join  Air_Force_Planes on MaintinenceTeam.Plane_Code=Air_Force_Planes.Plane_Code;