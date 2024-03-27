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
 
(5, 'Ainur', 'Suleimenova', '09/07/2003', 3.6, 5, 'Almaty'),
 
(6, 'Askhat', 'Yerzhanov', '12/04/2004', 3.7, 1, 'Atyrau'),
 
(7, 'Aizere', 'Tulegenova', '28/09/2005', 3.4, 3, 'Almaty'),
 
(8, 'Aruzhan', 'Zhumagaliyeva', '03/12/2003', 3.8, 2, 'Almaty'),
 
(9, 'Azamat', 'Iskakov', '25/03/2006', 3.5, 4, 'Taldykorgan'),
 
(10, 'Dana', 'Baibekova', '19/06/2004', 3.9, 3, 'Almaty'),
 
(11, 'Eldar', 'Bekturov', '07/01/2002', 3.3, 1, 'Almaty'),
 
(12, 'Emina', 'Kasimova', '14/10/2003', 3.7, 2, 'Astana'),
 
(13, 'Galymzhan', 'Saparbayev', '02/05/2005', 3.6, 5, 'Almaty'),
 
(14, 'Gaukhar', 'Nurkhanova', '07/08/2004', 3.4, 1, 'Almaty'),
 
(15, 'Ilyas', 'Rakhimov', '16/07/2006', 3.8, 3, 'Almaty'),
 
(16, 'Karlygash', 'Tursynbekova', '09/09/2002', 3.9, 2, 'Shymkent'),
 
(17, 'Mukhtar', 'Zhumabayev', '22/11/2003', 3.5, 4, 'Almaty'),
 
(18, 'Nurgul', 'Kenzhebekova', '05/04/2004', 3.7, 1, 'Almaty'),
 
(19, 'Nurzhan', 'Talgatov', '28/02/2005', 3.6, 5, 'Astana'),
 
(20, 'Ruslan', 'Karimov', '11/03/2002', 3.4, 3, 'Almaty'),
 
(21, 'Sanzhar', 'Bakytov', '07/06/2003', 3.8, 2, 'Almaty'),
 
(22, 'Saule', 'Oralova', '01/10/2005', 3.9, 1, 'Almaty'),
 
(23, 'Talgat', 'Sarsembayev', '10/12/2004', 3.5, 4, 'Shymkent'),
 
(24, 'Zarina', 'Kazakhbayeva', '29/01/2003', 3.7, 1, 'Almaty'),
 
(25, 'Zhibek', 'Tulendiyeva', '31/07/2006', 3.8, 3, 'Almaty'),
 
(26, 'Azamat', 'Iskakov', '05/09/2002', 3.9, 2, 'Atyrau'),
 
(27, 'Zhuldyz', 'Nurlanova', '18/08/2005', 3.5, 4, 'Almaty'),
 
(28, 'Ayaz', 'Mukhametov', '24/02/2004', 3.6, 5, 'Almaty'),
 
(29, 'Zarina', 'Zhakupova', '06/11/2003', 3.7, 1, 'Almaty'),
 
(30, 'Arman', 'Sagymbayev', '14/04/2002', 3.8, 3, 'Almaty'),
 
(31, 'Amina', 'Kanatova', '30/06/2004', 3.9, 2, 'Astana'),
 
(32, 'Dinara', 'Ospanova', '03/03/2006', 3.5, 4, 'Almaty'),
 
(33, 'Erlan', 'Tasmagambetov', '27/10/2002', 3.6, 5, 'Almaty'),
 
(34, 'Zere', 'Yergaliyeva', '20/05/2005', 3.7, 1, 'Almaty'),
 
(35, 'Ruslan', 'Mukhtarov', '22/07/2004', 3.8, 3, 'Almaty'),
 
(36, 'Nazerke', 'Nurmukhamedova', '08/09/2003', 3.9, 2, 'Almaty'),
 
(37, 'Baurzhan', 'Aidarkhanov', '12/12/2002', 3.5, 4, 'Astana'),
 
(38, 'Aigerim', 'Nurlanova', '16/01/2004', 3.6, 5, 'Almaty'),
 
(39, 'Nursultan', 'Kulmanov', '13/08/2005', 3.7, 1, 'Almaty'),
 
(40, 'Aisha', 'Tulegenova', '09/04/2006', 3.8, 3, 'Almaty');
 
select * from students 
where gpa >= 3
and gpa <= 3.5
select * from students
where date_of_birth <= '01.01.2003'
and city = 'Shymkent'
select * from students
where student_ID % 2 = 0
select * from students
where last_name like 'A%'
select * from students 
order by gpa desc nulls last
limit 1;
select * from students 
order by gpa asc nulls first
limit 1;
select * from students
where DATE_PART('month', date_of_birth) = 1
select first_name from students
group by date_of_birth