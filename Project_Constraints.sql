ALTER TABLE Air_Force_Cadets
ADD Dept_ID varchar(50) NOT NULL
DEFAULT 'PAF-001'
WITH VALUES;


ALTER TABLE Air_Force_Cadets
ADD CONSTRAINT FK_Air_Force_Cadets$Dept_ID
FOREIGN KEY (Dept_ID)
REFERENCES Air_Force_Departments(Dept_ID);
SELECT * FROM Air_Force_Cadets;


ALTER TABLE Air_Force_Planes
ADD CONSTRAINT Air_Force_Planes$Quantity CHECK (Quantity>10 AND Quantity<300);


ALTER TABLE Air_Force_Planes
ADD CONSTRAINT Air_Force_Planes$Plane_Code CHECK (Plane_Code>100 AND Plane_Code<250);


ALTER TABLE MaintinenceTeam
ADD CONSTRAINT MaintinenceTeam$Worker_age CHECK (Worker_age>20 AND Worker_age<45);


ALTER TABLE Air_Force_Pilots
ADD CONSTRAINT Air_Force_Pilots$Pilot_Id CHECK (Pilot_Id>100 AND Pilot_Id<350);


ALTER TABLE Air_Force_Pilots
ADD CONSTRAINT Air_Force_Pilots$Dept_ID CHECK (Dept_ID = 'PAF-004' OR Dept_ID = 'PAF-006');


ALTER TABLE Air_Force_Pilots
ADD CONSTRAINT Air_Force_Pilots$Plane_Code CHECK (Plane_Code>100 AND Plane_Code<250);


ALTER TABLE Air_Force_Cadets
ADD CONSTRAINT Air_Force_Cadets$Cadet_ID CHECK (Cadet_ID>1000 AND Cadet_ID<1500);


ALTER TABLE Air_Force_Departments
ADD CONSTRAINT Air_Force_Departments$Dept_Budget CHECK (Dept_Budget>10000 AND Dept_Budget<99999999);







