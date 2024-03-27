create table Majors(
	major_ID serial primary key,
	major_name varchar(200)
);
create table Students(
	student_ID serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	date_of_birth  date,
	gpa decimal,
	major_ID integer,
	FOREIGN KEY(major_ID) REFERENCES Majors(major_ID),
	city varchar(50)
);
insert into majors(major_ID, major_name) 
values  (1, 'Computer Science'), 
		(2, 'Mechanical Engineering'),
    	(3, 'Finance'),
		(4, 'Electrical Engineering'), 
		(5, 'Biology'); 
INSERT INTO students (student_ID, first_name, last_name, date_of_birth, gpa, major_ID, city)

 

VALUES  

 

(1, 'Amina', 'Abdulova', '14/05/2003', 3.8, 1, 'Almaty'),

 

(2, 'Aidar', 'Kazakhov', '23/08/2004', 3.5, 2, 'Astana'),

 

(3, 'Gulnara', 'Ismailova', '30/11/2005', 3.9, 3, 'Almaty'),

 

(4, 'Bakhytzhan', 'Nurpeisov', '17/02/2002', 3.2, 4, 'Shymkent'),

 
