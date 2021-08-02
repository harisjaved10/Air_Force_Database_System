
/* TRIGGER AFTER UPDATE On Air_Force_Pilots */

IF OBJECT_ID('AFTER_UPDATE') is not null
drop trigger AFTER_UPDATE


GO
CREATE TRIGGER AFTER_UPDATE ON Air_Force_Pilots
AFTER UPDATE
AS
BEGIN

	print('Hello from trigger');

	declare @pilot_id int;
	declare @pilot_name varchar(50);
	declare @pilot_rank varchar(50);
	declare @dept_id varchar(50);
	declare @plane_code int;
	declare @output varchar (50);

	select @pilot_id = Pilot_Id from inserted;
	select @pilot_name = Pilot_Name from inserted;
	select @pilot_rank = Pilot_Rank from inserted;
	select @dept_id = Dept_ID from inserted;
	select @plane_code = Plane_Code from inserted;

	if update (Pilot_Id)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Pilot_Name)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Pilot_Rank)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Dept_ID)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Plane_Code)
	BEGIN
		set @output = 'Record Updated';
	END

	INSERT INTO UPDATED_PILOTS VALUES (@pilot_id, @pilot_name, @pilot_rank, @dept_id, @plane_code, getDate() );

	PRINT 'AFTER UPDATE Trigger fired.'
END

GO


UPDATE Air_Force_Pilots SET Pilot_Id=115 WHERE Pilot_Name = 'Fawad Alam';
UPDATE Air_Force_Pilots SET Pilot_Id=118 WHERE Pilot_Name = 'Faiz Amir';
UPDATE Air_Force_Pilots SET Pilot_Name = 'Umer Ashraf' WHERE Pilot_Id = 214;
Select * from Air_Force_Pilots;
Select * from UPDATED_PILOTS;
                              
 

/* TRIGGER #2 ON Air_Force_Planes AFTER INSERT */


IF OBJECT_ID('AFTER_INSERT') is not null
drop trigger AFTER_INSERT

GO
CREATE TRIGGER AFTER_INSERT ON Air_Force_Planes
After insert
As
BEGIN
	
	print('Hello from trigger');

	declare @plane_code int;
	declare @plane_name varchar(50);
	declare @quantity int;
	declare @squad int;
	declare @cnic varchar(50);
	declare @action varchar(50);
	declare @date_time varchar(50);

	select @plane_code = Plane_Code FROM inserted;
	select @plane_name = Plane_Name FROM inserted;
	select @quantity = Quantity FROM inserted;
	select @squad = Included_Into_Squad FROM inserted;
	select @cnic = Worker_CNIC FROM inserted;
	set @action = 'Inserted Record';

	INSERT INTO INSERTED_PLANES VALUES (@plane_code, @plane_name, @quantity, @squad, @cnic, @action, GETDATE() );
END
GO

INSERT INTO Air_Force_Planes VALUES (275, 'Rafael', 10, 2020, '15783409861');
INSERT INTO Air_Force_Planes VALUES (156, 'F-22', 24, 2019, '34779025684');
INSERT INTO Air_Force_Planes VALUES (198, 'SU-35', 15, 2020, '94632679462');
SELECT * FROM Air_Force_Planes;
SELECT * from INSERTED_PLANES;



/* TRIGGER # 3 ON DELETED PILOTS FROM Air_Force_Pilots */

IF OBJECT_ID('AFTER_DELETE') is not null
drop trigger AFTER_DELETE

GO
CREATE TRIGGER AFTER_DELETE ON Air_Force_Pilots
After delete
As
BEGIN
	
	print('Hello from trigger');

	declare @pilot_id int;
	declare @pilot_name varchar(50);
	declare @pilot_rank varchar(50);
	declare @dept_id varchar(50);
	declare @plane_code varchar(50);
	declare @action varchar(50);
	declare @date_time varchar(50);

	select @pilot_id = Pilot_Id FROM deleted;
	select @pilot_name = Pilot_Name FROM deleted;
	select @pilot_rank = Pilot_Rank FROM deleted;
	select @dept_id = Dept_ID FROM deleted;
	select @plane_code = Plane_Code FROM deleted;
	set @action = 'Deleted Record';

	INSERT INTO DELETED_PILOTS VALUES (@pilot_id, @pilot_name, @pilot_rank, @dept_id, @plane_code, @action, GETDATE() );
END
GO

DELETE FROM Air_Force_Pilots WHERE Pilot_Id = 205
DELETE FROM Air_Force_Pilots WHERE Pilot_Id = 208;
DELETE FROM Air_Force_Pilots WHERE Pilot_Name = 'Mubasshir Zaidi';

Select * FROM Air_Force_Pilots;
Select * FROM DELETED_PILOTS;


 /* TRIGGER # 4 of AFTER_UPDATE ON Air_Force_Cadets */

IF OBJECT_ID('AFTER_UPDATE_CADETS') is not null
drop trigger AFTER_UPDATE_CADETS


GO
CREATE TRIGGER AFTER_UPDATE_CADETS ON Air_Force_Cadets
AFTER UPDATE
AS
BEGIN

	print('Hello from trigger');

	declare @course_no varchar(50);
	declare @cadet_name varchar(50);
	declare @cadet_id int;
	declare @joining varchar(50);
	declare @passing varchar(50);
	declare @term int;
	declare @output varchar (50);

	select @course_no = Course_no from inserted;
	select @cadet_name = Cadet_Name from inserted;
	select @cadet_id = Cadet_ID from inserted;
	select @joining = Joining_Date from inserted;
	select @passing = Passing_OutDate from inserted;
	select @term = Term from inserted;

	if update (Course_no)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Cadet_Name)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Cadet_ID)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Joining_Date)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Passing_OutDate)
	BEGIN
		set @output = 'Record Updated';
	END

	if update (Term)
	BEGIN
		set @output = 'Record Updated';
	END

	INSERT INTO UPDATED_CADETS VALUES (@course_no, @cadet_name, @cadet_id, @joining, @passing, @term, @output, getDate() );

	PRINT 'AFTER UPDATE Trigger fired.'
END

GO

UPDATE Air_Force_Cadets SET Cadet_Name = 'Babar Azam' WHERE Cadet_Id = 1010;
UPDATE Air_Force_Cadets SET Course_no = 'GDP 151' WHERE Cadet_Id = 1015;
Select * FROM Air_Force_Cadets;
Select * FROM UPDATED_CADETS;



/* TRIGGER # 5 ON INSERTED CADETS FROM Air_Force_Cadets */

IF OBJECT_ID('AFTER_INSERT_CADETS') is not null
drop trigger AFTER_INSERT_CADETS


GO
CREATE TRIGGER AFTER_INSERT_CADETS ON Air_Force_Cadets
AFTER INSERT
AS
BEGIN

	print('Hello from trigger');

	declare @course_no varchar(50);
	declare @cadet_name varchar(50);
	declare @cadet_id int;
	declare @joining varchar(50);
	declare @passing varchar(50);
	declare @term int;
	declare @output varchar (50);

	select @course_no = Course_no from inserted;
	select @cadet_name = Cadet_Name from inserted;
	select @cadet_id = Cadet_ID from inserted;
	select @joining = Joining_Date from inserted;
	select @passing = Passing_OutDate from inserted;
	select @term = Term from inserted;
	SET @output = 'Inserted Cadet';


	INSERT INTO INSERTED_CADETS VALUES (@course_no, @cadet_name, @cadet_id, @joining, @passing, @term, @output, getDate() );

	PRINT 'AFTER INSERT Trigger fired.'
END

GO

INSERT INTO Air_Force_Cadets VALUES ('GDP 149', 'Mushtaq Ahmed', 1016, '01/01/2019', '01/01/2020', 1);
INSERT INTO Air_Force_Cadets VALUES ('GDP 149', 'Sohail Abbas', 1017, '01/01/2019', '01/01/2020', 1);

SELECT * FROM Air_Force_Cadets;
SELECT * from INSERTED_CADETS;


 /* TRIGGER # 6 ON INSERTED PILOTS FROM Air_Force_Pilots */ 

IF OBJECT_ID('AFTER_INSERT_Pilots') is not null
drop trigger AFTER_DELETE_Pilots

GO
CREATE TRIGGER AFTER_DELETE ON Air_Force_Pilots
After delete
As
BEGIN
	
	print('Hello from trigger');

	declare @pilot_id int;
	declare @pilot_name varchar(50);
	declare @pilot_rank varchar(50);
	declare @dept_id varchar(50);
	declare @plane_code varchar(50);
	declare @action varchar(50);
	declare @date_time varchar(50);

	select @pilot_id = Pilot_Id FROM inserted;
	select @pilot_name = Pilot_Name FROM inserted;
	select @pilot_rank = Pilot_Rank FROM inserted;
	select @dept_id = Dept_ID FROM inserted;
	select @plane_code = Plane_Code FROM inserted;
	set @action = 'Inserted Record';

	INSERT INTO INSERTED_PILOTS VALUES (@pilot_id, @pilot_name, @pilot_rank, @dept_id, @plane_code, @action, GETDATE() );
END
GO

INSERT INTO Air_Force_Pilots VALUES (155, 'Shakeel Abbasi', 'Air Commodore', 'PAF-006', 112);
INSERT INTO Air_Force_Pilots VALUES (157, 'Jan Sher', 'Flight Lt', 'PAF-004', 109);
SELECT * FROM Air_Force_Pilots;
SELECT * FROM INSERTED_Pilots;

/* TRIGGER #7 OF AFTER DELETE ON DELETED CADETS FROM Air_Force_Cadets */

IF OBJECT_ID('AFTER_DELETE_CADETS') is not null
drop trigger AFTER_DELETE_CADETS

GO
CREATE TRIGGER AFTER_DELETE_CADETS ON Air_Force_Cadets
AFTER delete
AS
BEGIN

	print('Hello from trigger');

	declare @course_no varchar(50);
	declare @cadet_name varchar(50);
	declare @cadet_id int;
	declare @joining varchar(50);
	declare @passing varchar(50);
	declare @term int;
	declare @output varchar (50);

	select @course_no = Course_no from deleted;
	select @cadet_name = Cadet_Name from deleted;
	select @cadet_id = Cadet_ID from deleted;
	select @joining = Joining_Date from deleted;
	select @passing = Passing_OutDate from deleted;
	select @term = Term from deleted;
	set @output = 'Deleted Record';

	INSERT INTO DELETED_CADETS VALUES (@course_no, @cadet_name, @cadet_id, @joining, @passing, @term, @output, getDate() );

	PRINT 'AFTER DELETE Trigger fired.'
END

GO

DELETE Air_Force_Cadets WHERE Cadet_ID = 1005;
DELETE Air_Force_Cadets WHERE Cadet_ID = 1011;
SELECT * FROM Air_Force_Cadets;
SELECT * FROM DELETED_CADETS;
