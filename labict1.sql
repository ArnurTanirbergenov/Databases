create table Students(
	student_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	course_id int,
	birthdate date,
	
	foreign key (course_id) references Courses(course_id)
)

create table Teachers(
	teacher_id int primary key,
	teacher_name varchar(300)
)

create table Courses(
	course_id int primary key,
	course_name varchar(100),
	teacher_id int,
	foreign key (teacher_id) references Teachers(teacher_id)
)

INSERT INTO Students (student_id, first_name, last_name, birthdate, course_id) VALUES
    (1, 'John', 'Doe', '1995-03-15', 1),
    (2, 'Jane', 'Smith', '1997-08-21', 2),
    (3, 'Michael', 'Johnson', '1998-05-10', 1),
    (4, 'Emily', 'Williams', '1996-11-30', 3),
    (5, 'David', 'Brown', '1999-02-25', 2);

INSERT INTO Teachers (teacher_id, teacher_name) VALUES
    (1, 'Mr. Anderson'),
    (2, 'Ms. Johnson');

INSERT INTO Courses (course_id, course_name, teacher_id) VALUES
    (1, 'Mathematics 101', 1),
    (2, 'History 202', 2),
    (3, 'Science 301', 1);
	
select * from Students 
order by birthdate desc
limit 1

select * from Students 
order by birthdate asc
limit 1

select * from students 
where course_id
in(select course_id from Courses where course_name = 'Mathematics 101')

update Students
set last_name = 'notJohnson' 
where last_name = 'Johnson'
select * from Students

update Students
set last_name = 'you study in course_id = 1'
where course_id = 1
select * from Students

select students.first_name, students.last_name,
students.course_id, courses.course_id, teachers.teacher_id, teachers.teacher_name
from Students join courses on Courses.course_id = students.course_id
join teachers on Teachers.teacher_id = courses.teacher_id


select Courses.course_id,Courses.course_name,
count(Students.course_id)
from Courses join Students on students.course_id = courses.course_id
group by Courses.course_id


select Courses.course_name,
AVG(EXTRACT(YEAR from CURRENT_DATE) - EXTRACT(YEAR from Students.birthdate)) as average_age
from Courses join Students on Students.course_id = Courses.course_id
group by Courses.course_name

Create table Grades(
	course_id int,
	student_id int,
	score int,
	Foreign key (course_id) references Courses(course_id),
	foreign key (student_id) references Students(student_id)
)

INSERT INTO Grades (student_id, course_id, score) VALUES
    (1, 1, 85),
    (1, 2, 92),
    (2, 1, 78),
    (2, 2, 88),
    (3, 1, 92),
    (3, 3, 91),
    (4, 3, 79),
    (5, 2, 87),
    (5, 3, 95);


select Students.first_name
from students join grades on grades.student_id = students.student_id
group by Students.first_name
having avg(grades.score) > (select avg(score) from grades)

select Students.first_name
from students join grades on grades.student_id = students.student_id
group by Students.first_name
having avg(grades.score) > 87


CREATE VIEW StudentCourseGrades AS
SELECT Students.student_id, Students.first_name, Students.last_name, Courses.course_name, AVG(Grades.score) AS avg_score
FROM Students
JOIN Courses ON Students.course_id = Courses.course_id
JOIN Grades ON Students.student_id = Grades.student_id
GROUP BY Students.student_id, Students.first_name, Students.last_name, Courses.course_name;

SELECT * FROM StudentCourseGrades;



