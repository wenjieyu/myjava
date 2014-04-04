-- Data for US College 
INSERT INTO course VALUES ('EN100', 'Basic English', 0, '');
INSERT INTO course VALUES ('LA123', 'English Literature', 3, 'EN100');
INSERT INTO course VALUES ('CIS253', 'Database Systems', 3, '');
INSERT INTO course VALUES ('CIS265', 'Systems Analysis', 3, 'CIS253');
INSERT INTO course VALUES ('MA150', 'College Algebra', 3, '');
INSERT INTO course VALUES ('AC101', 'Accounting', 3, '');

INSERT INTO room VALUES ('L', 'Lab');
INSERT INTO room VALUES ('C', 'Classroom');
INSERT INTO room VALUES ('O', 'Office');

INSERT INTO term VALUES ('SP02', 'Spring 2002', '28-APR-02', '16-AUG-02');
INSERT INTO term VALUES ('FL02', 'Fall 2002', '08-SEP-02', '20-DEC-02');
INSERT INTO term VALUES ('WN03', 'Winter 2003', '05-JAN-03', '18-APR-03');
INSERT INTO term VALUES ('SP03', 'Spring 2003', '27-APR-03', '15-AUG-03');
INSERT INTO term VALUES ('FL03', 'Fall 2003', '07-SEP-03', '19-DEC-03');

INSERT INTO major VALUES (100, 'AAS-Accounting');
INSERT INTO major VALUES (200, 'AAS-Computer Science');
INSERT INTO major VALUES (300, 'AAS-Telecommunications');
INSERT INTO major VALUES (400, 'BS-Accounting');
INSERT INTO major VALUES (500, 'BS-Computer Science');
INSERT INTO major VALUES (600, 'BS-Telecommunications');

INSERT INTO department VALUES (1, 'Computer Science', 111);
INSERT INTO department VALUES (2, 'Telecommunications', 222);
INSERT INTO department VALUES (3, 'Accounting', 333);
INSERT INTO department VALUES (4, 'Math and Science', 444);
INSERT INTO department VALUES (5, 'Liberal Arts', 555);

INSERT INTO location VALUES (11, 'Gandhi', 101, 2, 'O');
INSERT INTO location VALUES (12, 'Gandhi', 103, 2, 'O');
INSERT INTO location VALUES (13, 'Kennedy', 202, 35, 'L');
INSERT INTO location VALUES (14, 'Kennedy', 204, 50, 'L');
INSERT INTO location VALUES (15, 'Nehru', 301, 50, 'C');
INSERT INTO location VALUES (16, 'Nehru', 309, 45, 'C');
INSERT INTO location VALUES (17, 'Gandhi', 105, 2, 'O');
INSERT INTO location VALUES (18, 'Kennedy', 206, 40, 'L');
INSERT INTO location VALUES (19, 'Kennedy', 210, 30, 'L');
INSERT INTO location VALUES (20, 'Gandhi', 107, 2, 'O');
INSERT INTO location VALUES (21, 'Gandhi', 109, 2, 'O');

INSERT INTO faculty VALUES (111, 'Jones', 11, 525, 1);
INSERT INTO faculty VALUES (222, 'Williams', 20, 533, 2);
INSERT INTO faculty VALUES (123, 'Mobley', 11, 529, 1);
INSERT INTO faculty VALUES (235, 'Vajpayee', 12, 577, 2);
INSERT INTO faculty VALUES (345, 'Sen', 12, 579, 3);
INSERT INTO faculty VALUES (444, 'Rivera', 21, 544, 4);
INSERT INTO faculty VALUES (555, 'Chang', 17, 587, 5);
INSERT INTO faculty VALUES (333, 'Collins', 17, 599, 3);

INSERT INTO student VALUES ('00100', 'Diaz', 'Jose', '1 Ford Avenue #7', 
	'Hill', 'NJ', '08863', 'WN03', TO_DATE ('02/12/1983', 'mm/dd/yyyy'), 
	123, 100, '9735551111');
INSERT INTO student VALUES ('00101', 'Tyler', 'Mickey', '12 Morris Avenue', 
	'Bronx', 'NY', '10468', 'SP03', TO_DATE ('03/18/1984', 'mm/dd/yyyy'), 
	555, 500, '7185552222');
INSERT INTO student VALUES ('00102', 'Patel', 'Rajesh', '25 River Road #3', 
	'Edison', 'NJ', '08837', 'WN03', TO_DATE ('12/12/1985', 'mm/dd/yyyy'), 
	111, 400, '7325553333');
INSERT INTO student VALUES ('00103', 'Rickles', 'Deborah', '100 Main Street', 
	'Iselin', 'NJ', '08838', 'FL02', TO_DATE ('10/20/1970', 'mm/dd/yyyy'), 
	555, 500, '7325554444');
INSERT INTO student VALUES ('00104', 'Lee', 'Brian', '2845 First Lane', 
	'Hope', 'NY', '11373', 'WN03', TO_DATE ('11/28/1985', 'mm/dd/yyyy'), 
	345, 600, '2125555555');
INSERT INTO student VALUES ('00105', 'Khan', 'Amir', '213 Broadway', 
	'Clifton', 'NJ', '07222', 'WN03', TO_DATE ('07/07/1984', 'mm/dd/yyyy'), 
	222, 200, '2015556666');

INSERT INTO crssection VALUES (1101, 'CIS265', '01', 'WN03', 111, 'MW', 
				'09:00', '10:30', 13, 30);
INSERT INTO crssection VALUES (1102, 'CIS253', '01', 'WN03', 123, 'TR', 
				'09:00', '10:30', 18, 40);
INSERT INTO crssection VALUES (1103, 'MA150', '02', 'WN03', 444, 'F',
				'09:00', '12:00', 15, 25);
INSERT INTO crssection VALUES (1104, 'AC101', '10', 'WN03', 345, 'MW',
				'10:30', '12:00', 16, 35);
INSERT INTO crssection VALUES (1205, 'CIS265', '01', 'SP03', NULL, 'MW',
				'09:00', '10:30', 14, 35);
INSERT INTO crssection VALUES (1206, 'CIS265', '02', 'SP03', 111, 'TR',
				'09:00', '10:30', 18, 30);
INSERT INTO crssection VALUES (1207, 'LA123', '05', 'SP03', NULL, 'MW',
				'09:00', '10:30', 15, 30);
INSERT INTO crssection VALUES (1208, 'CIS253', '21', 'SP03', 123, 'TR', 
				'09:00', '10:30', 14, 40);
INSERT INTO crssection VALUES (1209, 'CIS253', '11', 'SP03', 111, 'MW',
				'09:00', '10:30', 18, 40);
INSERT INTO crssection VALUES (1210, 'CIS253', '31', 'SP03', 123, 'F', 
				'TBA', 'TBA', 19, 2);

INSERT INTO registration VALUES ('00100', 1103, 'C', 'F', 'R');
INSERT INTO registration VALUES ('00100', 1102, 'B', 'B', 'R');
INSERT INTO registration VALUES ('00100', 1104, 'B', 'A', 'R');
INSERT INTO registration VALUES ('00102', 1102, 'F', 'D', 'R');
INSERT INTO registration VALUES ('00102', 1103, 'A', 'A', 'R');
INSERT INTO registration VALUES ('00103', 1101, 'F', 'W', 'W');
INSERT INTO registration VALUES ('00103', 1104, 'D', 'D', 'R');
INSERT INTO registration VALUES ('00100', 1207, '', '', 'X');
INSERT INTO registration VALUES ('00103', 1206, '', '', 'W');
INSERT INTO registration VALUES ('00104', 1206, '', '', 'X');
INSERT INTO registration VALUES ('00104', 1207, '', '', 'R');
INSERT INTO registration VALUES ('00104', 1210, '', '', 'R');
INSERT INTO registration VALUES ('00105', 1208, '', '', 'R');
INSERT INTO registration VALUES ('00105', 1209, '', '', 'X');
INSERT INTO registration VALUES ('00101', 1205, '', '', 'X');
INSERT INTO registration VALUES ('00102', 1210, '', '', 'R');
INSERT INTO registration VALUES ('00102', 1207, '', '', 'R');
INSERT INTO registration VALUES ('00102', 1206, '', '', 'X');

-- Add back the constraints
ALTER TABLE course
ADD CONSTRAINT course_prereq_fk FOREIGN KEY(PreReq)
	REFERENCES course(CourseId);

ALTER TABLE department
ADD CONSTRAINT department_facultyid_fk FOREIGN KEY(FacultyId)
	REFERENCES faculty(FacultyId);
	
-- Data for Corp. Database
--
INSERT INTO position VALUES (1, 'President');
INSERT INTO position VALUES (2, 'Manager');
INSERT INTO position VALUES (3, 'Programmer');
INSERT INTO position VALUES (4, 'Accountant');
INSERT INTO position VALUES (5, 'Salesman');

INSERT INTO emplevel VALUES (1, 1, 25000);
INSERT INTO emplevel VALUES (2, 25001, 50000);
INSERT INTO emplevel VALUES (3, 50001, 100000);
INSERT INTO emplevel VALUES (4, 100001, 500000);

INSERT INTO qualification VALUES (1, 'Doctorate');
INSERT INTO qualification VALUES (2, 'Masters');
INSERT INTO qualification VALUES (3, 'Bachelors');
INSERT INTO qualification VALUES (4, 'Associates');
INSERT INTO qualification VALUES (5, 'High School');

INSERT INTO dept VALUES (10, 'Finance', 'Charlotte', 123);
INSERT INTO dept VALUES (20, 'InfoSys', 'New York', 543);
INSERT INTO dept VALUES (30, 'Sales', 'Woodbridge', 135);
INSERT INTO dept VALUES (40, 'Marketing', 'Los Angeles', 246);

INSERT INTO employee VALUES (111, 'Smith', 'John', 1, NULL, 
	TO_DATE ('04/15/1960', 'mm/dd/yyyy'), 2650, 3500, 10, 1);
INSERT INTO employee VALUES (246, 'Houston', 'Larry', 2, 111, 
	TO_DATE ('05/19/1967', 'mm/dd/yyyy'), 150000, 10000, 40, 2);
INSERT INTO employee VALUES (123, 'Roberts', 'Sandi', 2, 111, 
	TO_DATE ('12/02/1991', 'mm/dd/yyyy'), 75000, NULL, 10, 2);
INSERT INTO employee VALUES (433, 'McCall', 'Alex', 3, 543, 
	TO_DATE ('05/10/1997', 'mm/dd/yyyy'), 66500, NULL, 20, 4);
INSERT INTO employee VALUES (543, 'Dev', 'Derek', 2, 111, 
	TO_DATE ('03/15/1995', 'mm/dd/yyyy'), 80000, 20000, 20, 1);
INSERT INTO employee VALUES (200, 'Shaw', 'Jinku', 5, 135, 
	TO_DATE ('01/03/00', 'mm/dd/yy'), 24500, 3000, 30, NULL);
INSERT INTO employee VALUES (135, 'Garner', 'Stanley', 2, 111, 
	TO_DATE ('02/29/1996', 'mm/dd/yyyy'), 45000, 5000, 30, 5);
INSERT INTO employee VALUES (222, 'Chen', 'Sunny', 4, 123, 
	TO_DATE ('08/15/1999', 'mm/dd/yyyy'), 35000, NULL, 10, 3);

INSERT INTO dependent VALUES (543, 1, TO_DATE ('09/28/1958', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (543, 2, TO_DATE ('10/14/1988', 'mm/dd/yyyy'),
					'Son');
INSERT INTO dependent VALUES (200, 1, TO_DATE ('06/10/1976', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (222, 1, TO_DATE ('02/04/1975', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (222, 2, TO_DATE ('08/23/1997', 'mm/dd/yyyy'),
					'Son');
INSERT INTO dependent VALUES (222, 3, TO_DATE ('07/10/1999', 'mm/dd/yyyy'),
					'Daughter');
INSERT INTO dependent VALUES (111, 1, TO_DATE ('12/12/1945', 'mm/dd/yyyy'),
					'Spouse');
-- Add back the constraints
ALTER TABLE dept
ADD CONSTRAINT dept_employeeid_fk FOREIGN KEY(EmployeeId)
	REFERENCES employee(EmployeeId);

ALTER TABLE employee
ADD CONSTRAINT employee_supervisor_fk FOREIGN KEY(Supervisor)
	REFERENCES employee(EmployeeId);
