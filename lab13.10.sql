create table Authors (
	author_ID SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birth_date DATE
);
create table Books (
	book_ID SERIAL PRIMARY KEY,
	title VARCHAR(100),
	publication_year INTEGER,
	available_copies INTEGER,
	author_ID SERIAL,
	FOREIGN KEY (author_ID) REFERENCES authors(author_ID)
);
create table Customers (
	customer_ID SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(20)
);
create table Borrowed_books (
	borrow_ID INT PRIMARY KEY NOT NULL,
	book_ID INT,
	customer_ID INT,
	borrow_date DATE,
	return_date DATE, FOREIGN KEY (book_ID) REFERENCES books(book_ID),
	FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
);

INSERT INTO Authors (author_ID, first_name, last_name, birth_date)
VALUES
 (1, 'Stephen', 'King', '21/09/1947'),
 (2, 'J.K.', 'Rowling', '31/07/1965'),
 (3, 'George', 'Orwell', '25/06/1903'),
 (4, 'J.R.R.', 'Tolkien', '03/01/1892'),
 (5, 'Agatha', 'Christie', '15/09/1890'),
 (6, 'F. Scott', 'Fitzgerald', '24/09/1896'),
 (7, 'Mark', 'Twain', '30/11/1835'),
 (8, 'Harper', 'Lee', '28/04/1926'),
 (9, 'Leo', 'Tolstoy', '09/09/1828'),
 (10, 'Jane', 'Austen', '16/12/1775'),
 (11, 'Fyodor', 'Dostoevsky', '11/11/1821'),
 (12, 'Charles', 'Dickens', '07/02/1812'),
 (13, 'Gabriel', 'García Márquez', '06/03/1927'),
 (14, 'Ernest', 'Hemingway', '21/07/1899'),
 (15, 'William', 'Faulkner', '25/09/1897'),
 (16, 'Herman', 'Melville', '01/08/1819'),
 (17, 'Emily', 'Brontë', '30/07/1818'),
 (18, 'Aldous', 'Huxley', '26/07/1894'),
 (19, 'Virginia', 'Woolf', '25/01/1882'),
 (20, 'Toni', 'Morrison', '18/02/1931');
INSERT INTO Books (book_ID, title, publication_year, available_copies, author_ID)
VALUES
 (1, 'It', 1986, 3, 1),
 (2, 'The Shining', 1977, 7, 1),
 (3, 'Harry Potter and the Sorcerer''s Stone', 1997, 5, 2),
 (4, '1984', 1949, 8, 3),
 (5, 'The Lord of the Rings', 1954, 6, 4),
 (6, 'Murder on the Orient Express', 1934, 9, 5),
 (7, 'The Great Gatsby', 1925, 2, 6),
 (8, 'Adventures of Huckleberry Finn', 1884, 4, 7),
 (9, 'To Kill a Mockingbird', 1960, 10, 8),
 (10, 'War and Peace', 1869, 0, 9),
 (11, 'Pride and Prejudice', 1813, 1, 10),
 (12, 'Crime and Punishment', 1866, 3, 11),
 (13, 'A Tale of Two Cities', 1859, 7, 12),
 (14, 'One Hundred Years of Solitude', 1967, 8, 13),
 (15, 'The Old Man and the Sea', 1952, 5, 14),
 (16, 'The Sound and the Fury', 1929, 0, 15),
 (17, 'Moby-Dick', 1851, 10, 16),
 (18, 'Wuthering Heights', 1847, 3, 17),
 (19, 'Brave New World', 1932, 9, 18),
 (20, 'To the Lighthouse', 1927, 2, 19),
 (21, 'Beloved', 1987, 8, 20),
 (22, 'Carrie', 1974, 6, 1),
 (23, 'The Stand', 1978, 7, 1),
 (24, 'Harry Potter and the Chamber of Secrets', 1998, 4, 2),
 (25, 'Animal Farm', 1945, 0, 3),
 (26, 'The Hobbit', 1937, 1, 4),
 (27, 'Death on the Nile', 1937, 2, 5),
 (28, 'Tender Is the Night', 1934, 9, 6),
 (29, 'The Adventures of Tom Sawyer', 1876, 8, 7),
 (30, 'Go Set a Watchman', 2015, 3, 8),
 (31, 'Anna Karenina', 1877, 7, 9),
 (32, 'Sense and Sensibility', 1811, 1, 10),
 (33, 'The Brothers Karamazov', 1880, 6, 11),
 (34, 'Little Dorrit', 1857, 0, 12),
 (35, 'Love in the Time of Cholera', 1985, 5, 13),
 (36, 'For Whom the Bell Tolls', 1940, 10, 14),
 (37, 'As I Lay Dying', 1930, 0, 15),
 (38, 'Billy Budd, Sailor', 1924, 4, 16),
 (39, 'Jane Eyre', 1847, 2, 17),
 (40, 'Brave New World Revisited', 1958, 6, 18),
 (41, 'Mrs. Dalloway', 1925, 1, 19),
 (42, 'Song of Solomon', 1977, 8, 20),
 (43, 'Cujo', 1981, 5, 1),
 (44, 'Misery', 1987, 3, 1),
 (45, 'Harry Potter and the Prisoner of Azkaban', 1999, 7, 2),
 (46, 'Animal Farm and 1984', 1954, 0, 3),
 (47, 'The Silmarillion', 1977, 4, 4),
 (48, 'And Then There Were None', 1939, 8, 5),
 (49, 'Tender Is the Night', 1934, 9, 6),
 (50, 'The Adventures of Huckleberry Finn', 1884, 1, 7),
 (51, 'Go Set a Watchman', 2015, 3, 8),
 (52, 'War and Peace', 1869, 0, 9),
 (53, 'Pride and Prejudice', 1813, 4, 10),
 (54, 'The Idiot', 1869, 6, 11),
 (55, 'A Tale of Two Cities', 1859, 2, 12),
 (56, 'One Hundred Years of Solitude', 1967, 9, 13),
 (57, 'The Old Man and the Sea', 1952, 5, 14),
 (58, 'The Sound and the Fury', 1929, 0, 15),
 (59, 'Moby-Dick', 1851, 10, 16),
 (60, 'Wuthering Heights', 1847, 3, 17),
 (61, 'Brave New World', 1932, 7, 18),
 (62, 'To the Lighthouse', 1927, 1, 19),
 (63, 'Beloved', 1987, 8, 20),
 (64, 'The Tommyknockers', 1987, 6, 1),
 (65, 'The Dark Half', 1989, 7, 1),
 (66, 'Harry Potter and the Goblet of Fire', 2000, 4, 2),
 (67, 'Animal Farm and 1984', 1954, 0, 3),
 (68, 'The Children of Húrin', 2007, 5, 4),
 (69, 'Appointment with Death', 1938, 9, 5),
 (70, 'Tender Is the Night', 1934, 0, 6),
 (71, 'The Adventures of Tom Sawyer', 1876, 4, 7),
 (72, 'Go Set a Watchman', 2015, 6, 8),
 (73, 'War and Peace', 1869, 0, 9),
 (74, 'Pride and Prejudice', 1813, 2, 10),
 (75, 'The Brothers Karamazov', 1880, 7, 11),
 (76, 'Little Dorrit', 1857, 0, 12),
 (77, 'Love in the Time of Cholera', 1985, 8, 13),
 (78, 'For Whom the Bell Tolls', 1940, 3, 14),
 (79, 'As I Lay Dying', 1930, 0, 15),
 (80, 'Billy Budd, Sailor', 1924, 5, 16),
 (81, 'Jane Eyre', 1847, 1, 17),
 (82, 'Brave New World Revisited', 1958, 9, 18),
 (83, 'Mrs. Dalloway', 1925, 3, 19),
 (84, 'Song of Solomon', 1977, 7, 20),
 (85, 'The Girl Who Loved Tom Gordon', 1999, 4, 1),
 (86, 'Dreamcatcher', 2001, 2, 1),
 (87, 'Harry Potter and the Order of the Phoenix', 2003, 9, 2),
 (88, 'Animal Farm and 1984', 1954, 1, 3),
 (89, 'The Fall of Gondolin', 2018, 6, 4),
 (90, 'The A.B.C. Murders', 1936, 7, 5),
 (91, 'Tender Is the Night', 1934, 8, 6),
 (92, 'The Adventures of Huckleberry Finn', 1884, 0, 7),
 (93, 'Go Set a Watchman', 2015, 5, 8),
 (94, 'War and Peace', 1869, 2, 9),
 (95, 'Pride and Prejudice', 1813, 7, 10),
 (96, 'The Idiot', 1869, 3, 11),
 (97, 'A Tale of Two Cities', 1859, 0, 12),
 (98, 'One Hundred Years of Solitude', 1967, 4, 13),
 (99, 'The Old Man and the Sea', 1952, 8, 14),
 (100, 'The Sound and the Fury', 1929, 1, 15);
INSERT INTO Customers (customer_ID, first_name, last_name, email, phone_number)
VALUES
 (1, 'Kamilla', 'Aitalieva', 'kamosik@gmail.com', '+77081223345'),
 (2, 'Aigerim', 'Kenzhebayeva', 'aigerim123@gmail.com', '+77052345678'),
 (3, 'Bakytzhan', 'Sultanov', 'bakytzhan@gmail.com', '+77012655457'),
 (4, 'Dinara', 'Ismailova', 'dinaraisi@gmail.com', '+77088734024'),
 (5, 'Erlan', 'Nurzhanov', 'erlan.nurzhanov@gmail.com', '+77082134567'),
 (6, 'Gaukhar', 'Akhmetova', 'gaukhar.a@gmail.com', '+77011231234'),
 (7, 'Zhanar', 'Kulbekova', 'zhanar.k@gmail.com', '+77017778899'),
 (8, 'Azamat', 'Mukhametzhanov', 'azamat.m@gmail.com', '+77083456789'),
 (9, 'Aisulu', 'Sarsenova', 'aisulu.s@gmail.com', '+77013476923'),
 (10, 'Nurzhan', 'Ospanov', 'nurzhan.o@gmail.com', '+77014659318'),
 (11, 'Aizada', 'Zhakupova', 'aizada.z@gmail.com', '+77776502360'),
 (12, 'Zarina', 'Akhmetova', 'zarina.a@gmail.com', '+77053297930'),
 (13, 'Abdul', 'Sultanov', 'abdul.s@gmail.com', '+77086516265'),
 (14, 'Aizere', 'Tulegenova', 'aizere.t@gmail.com', '+77056565567'),
 (15, 'Azhar', 'Rakhimova', 'azhar.r@gmail.com', '+77055457651'),
 (16, 'Akbota', 'Kadirbekova', 'akbota.k@gmail.com', '+77085471551'),
 (17, 'Rustem', 'Kulzhabaev', 'rustem.k@gmail.com', '+77087547156'),
 (18, 'Sultan', 'Khamzin', 'sultan.k@gmail.com', '+77777567567'),
 (19, 'Aisana', 'Zhunussova', 'aisana.z@gmail.com', '+77051576113'),
 (20, 'Kazbek', 'Nurgaliev', 'kazbek.n@gmail.com', '+77084554651'),
 (21, 'Madina', 'Aitkulova', 'madina.a@gmail.com', '+77012461534'),
 (22, 'Erbol', 'Tursynov', 'erbol.t@gmail.com', '+77055146357'),
 (23, 'Dana', 'Omarova', 'dana.o@gmail.com', '+77774974685'),
 (24, 'Bakdaulet', 'Bakdauletov', 'bakdaulet.b@gmail.com', '+77058756464'),
 (25, 'Akmaral', 'Kenzhebayeva', 'akmaral.k@gmail.com', '+77085136542'),
 (26, 'Ainura', 'Sarsenova', 'ainura.s@gmail.com', '+77055561689'),
 (27, 'Rustem', 'Zhunissov', 'rustem.z@gmail.com', '+77771616548'),
 (28, 'Amina', 'Khamzina', 'amina.k@gmail.com', '+77012556443'),
 (29, 'Alibek', 'Kenzhebayev', 'alibek.k@gmail.com', '+77056564663'),
 (30, 'Ainur', 'Ospanova', 'ainur.o@gmail.com', '+77054556446'),
 (31, 'Daulet', 'Sarsenov', 'daulet.s@gmail.com', '+77084718156'),
 (32, 'Zarina', 'Nurzhanova', 'zarina.n@gmail.com', '+77778794755'),
 (33, 'Adil', 'Mukhametzhanov', 'adil.m@gmail.com', '+77087443215'),
 (34, 'Gulzhan', 'Kadirbekova', 'gulzhan.k@gmail.com', '+77051245647'),
 (35, 'Nurbol', 'Rakhimov', 'nurbol.r@gmail.com', '+77055657545'),
 (36, 'Aigerim', 'Zhunusova', 'aigerim.z@gmail.com', '+77778498097'),
 (37, 'Baurzhan', 'Aitkulov', 'baurzhan.a@gmail.com', '+77056543098'),
 (38, 'Saniya', 'Kenzhebayeva', 'saniya.k@gmail.com', '+77087654325'),
 (39, 'Raihan', 'Omarov', 'raihan.o@gmail.com', '+77084121218'),
 (40, 'Asylbek', 'Tulegenov', 'asylbek.t@gmail.com', '+77774651276'),
 (41, 'Aizere', 'Nurgalieva', 'aizere.n@gmail.com', '+77055434652'),
 (42, 'Amina', 'Aitkulova', 'amina.a@gmail.com', '+77053655484'),
 (43, 'Bakdaulet', 'Kadirbekov', 'bakdaulet.k@gmail.com', '+77776534655'),
 (44, 'Dina', 'Sultanova', 'dina.s@gmail.com', '+77085653643'),
 (45, 'Zhanat', 'Nurzhanov', 'zhanat.n@gmail.com', '+77082221791'),
 (46, 'Akmaral', 'Kenzhebayeva', 'akmaral.k@gmail.com', '+77051088904'),
 (47, 'Ainura', 'Sarsenova', 'ainura.s@gmail.com', '+77055362133'),
 (48, 'Rustem', 'Zhunissov', 'rustem.z@gmail.com', '+77775247897'),
 (49, 'Amina', 'Khamzina', 'amina.k@gmail.com', '+77052984789'),
 (50, 'Alibek', 'Kenzhebayev', 'alibek.k@gmail.com', '+77083872379'),
 (51, 'Ainur', 'Ospanova', 'ainur.o@gmail.com', '+77773628347'),
 (52, 'Daulet', 'Sarsenov', 'daulet.s@gmail.com', '+77058675457'),
 (53, 'Zarina', 'Nurzhanova', 'zarina.n@gmail.com', '+77057176573'),
 (54, 'Adil', 'Mukhametzhanov', 'adil.m@gmail.com', '+77774251823'),
 (55, 'Gulzhan', 'Kadirbekova', 'gulzhan.k@gmail.com', '+77088572389'),
 (56, 'Nurbol', 'Rakhimov', 'nurbol.r@gmail.com', '+77085765568'),
 (57, 'Aigerim', 'Zhunusova', 'aigerim.z@gmail.com', '+77014732891'),
 (58, 'Baurzhan', 'Aitkulov', 'baurzhan.a@gmail.com', '+77052361234'),
 (59, 'Saniya', 'Kenzhebayeva', 'saniya.k@gmail.com', '+77056162428'),
 (60, 'Raihan', 'Omarov', 'raihan.o@gmail.com', '+77772688465');
INSERT INTO borrowed_books (borrow_ID, book_ID, customer_ID, borrow_date,
return_date)
VALUES
 (1, 43, 12, '01-02-2023', '10-02-2023'),
 (2, 78, 27, '02-02-2023', '11-02-2023'),
 (3, 15, 48, '03-02-2023', '12-02-2023'),
 (4, 91, 3, '04-02-2023', '13-02-2023'),
 (5, 64, 36, '05-02-2023', '14-02-2023'),
 (6, 22, 56, '06-02-2023', '15-02-2023'),
 (7, 35, 9, '07-02-2023', '16-02-2023'),
 (8, 50, 20, '08-02-2023', '17-02-2023'),
 (9, 10, 41, '09-02-2023', '18-02-2023'),
 (10, 71, 4, '10-02-2023', '19-02-2023'),
 (11, 5, 18, '11-02-2023', '20-02-2023'),
 (12, 31, 34, '12-02-2023', '21-02-2023'),
 (13, 89, 52, '13-02-2023', '22-02-2023'),
 (14, 59, 8, '14-02-2023', '23-02-2023'),
 (15, 2, 44, '15-02-2023', '24-02-2023'),
 (16, 67, 29, '16-02-2023', '25-02-2023'),
 (17, 37, 50, '17-02-2023', '26-02-2023'),
 (18, 55, 11, '18-02-2023', '27-02-2023'),
 (19, 14, 31, '19-02-2023', '28-02-2023'),
 (20, 82, 21, '20-02-2023', '01-03-2023'),
 (21, 1, 14, '21-02-2023', '02-03-2023'),
 (22, 38, 40, '22-02-2023', '03-03-2023'),
 (23, 73, 19, '23-02-2023', '04-03-2023'),
 (24, 25, 5, '24-02-2023', '05-03-2023'),
 (25, 47, 25, '25-02-2023', '06-03-2023'),
 (26, 7, 54, '26-02-2023', '07-03-2023'),
 (27, 98, 1, '27-02-2023', '08-03-2023'),
 (28, 58, 47, '28-02-2023', '09-03-2023'),
 (29, 28, 6, '01-02-2023', '10-02-2023'),
 (30, 80, 38, '02-02-2023', '11-02-2023'),
 (31, 17, 51, '03-02-2023', '12-02-2023'),
 (32, 63, 22, '04-02-2023', '13-02-2023'),
 (33, 3, 10, '05-02-2023', '14-02-2023'),
 (34, 49, 39, '06-02-2023', '15-02-2023'),
 (35, 79, 15, '07-02-2023', '16-02-2023'),
 (36, 41, 57, '08-02-2023', '17-02-2023'),
 (37, 9, 23, '09-02-2023', '18-02-2023'),
 (38, 68, 45, '10-02-2023', '19-02-2023'),
 (39, 26, 55, '11-02-2023', '20-02-2023'),
 (40, 51, 32, '12-02-2023', '21-02-2023'),
 (41, 36, 7, '13-02-2023', '22-02-2023'),
 (42, 69, 28, '14-02-2023', '23-02-2023'),
 (43, 8, 46, '15-02-2023', '24-02-2023'),
 (44, 53, 13, '16-02-2023', '25-02-2023'),
 (45, 94, 49, '17-02-2023', '26-02-2023'),
 (46, 20, 2, '18-02-2023', '27-02-2023'),
 (47, 4, 35, '19-02-2023', '28-02-2023'),
 (48, 61, 24, '20-02-2023', '27-02-2023'),
 (49, 30, 42, '21-02-2023', '28-02-2023'),
 (50, 70, 16, '22-02-2023', '01-03-2023'),
(51, 10, 6, '01-03-2023', '10-03-2023'),
 (52, 31, 35, '02-03-2023', '11-03-2023'),
 (53, 85, 13, '03-03-2023', '12-03-2023'),
 (54, 50, 55, '04-03-2023', '13-03-2023'),
 (55, 21, 27, '05-03-2023', '14-03-2023'),
 (56, 73, 41, '06-03-2023', '15-03-2023'),
 (57, 46, 24, '07-03-2023', '16-03-2023'),
 (58, 66, 56, '08-03-2023', '17-03-2023'),
 (59, 12, 8, '09-03-2023', '18-03-2023'),
 (60, 91, 19, '10-03-2023', '19-03-2023'),
 (61, 57, 47, '11-03-2023', '20-03-2023'),
 (62, 35, 10, '12-03-2023', '21-03-2023'),
 (63, 68, 28, '13-03-2023', '22-03-2023'),
 (64, 11, 53, '14-03-2023', '23-03-2023'),
 (65, 77, 36, '15-03-2023', '24-03-2023'),
 (66, 38, 7, '16-03-2023', '25-03-2023'),
 (67, 22, 20, '17-03-2023', '26-03-2023'),
 (68, 62, 51, '18-03-2023', '27-03-2023'),
 (69, 89, 3, '19-03-2023', '28-03-2023'),
 (70, 16, 14, '20-03-2023', '29-03-2023'),
 (71, 40, 40, '21-03-2023', '30-03-2023'),
 (72, 32, 2, '22-03-2023', '31-03-2023'),
 (73, 86, 37, '23-03-2023', '01-04-2023'),
 (74, 28, 49, '24-03-2023', '02-04-2023'),
 (75, 17, 4, '25-03-2023', '03-04-2023'),
 (76, 63, 59, '26-03-2023', '04-04-2023'),
 (77, 20, 18, '27-03-2023', '05-04-2023'),
 (78, 9, 45, '28-03-2023', '06-04-2023'),
 (79, 54, 29, '29-03-2023', '07-04-2023'),
 (80, 33, 15, '30-03-2023', '08-04-2023'),
 (81, 87, 1, '31-03-2023', '09-04-2023'),
 (82, 64, 9, '01-04-2023', '10-04-2023'),
 (83, 14, 32, '02-04-2023', '11-04-2023'),
 (84, 27, 11, '03-04-2023', '12-04-2023'),
 (85, 75, 38, '04-04-2023', '13-04-2023'),
 (86, 8, 48, '05-04-2023', '14-04-2023'),
 (87, 44, 30, '06-04-2023', '15-04-2023'),
 (88, 47, 21, '07-04-2023', '16-04-2023'),
 (89, 72, 44, '08-04-2023', '17-04-2023'),
 (90, 41, 23, '09-04-2023', '18-04-2023'),
 (91, 5, 17, '10-04-2023', '19-04-2023'),
 (92, 43, 54, '11-04-2023', '20-04-2023'),
 (93, 7, 26, '12-03-2023', '21-03-2023'),
 (94, 67, 50, '13-04-2023', '22-04-2023'),
 (95, 37, 31, '14-04-2023', '23-04-2023'),
 (96, 15, 5, '15-04-2023', '24-04-2023'),
 (97, 59, 25, '16-04-2023', '24-04-2023'),
 (98, 80, 57, '17-04-2023', '26-04-2023'),
 (99, 25, 42, '18-04-2023', '27-04-2023'),
 (100, 36, 12, '19-04-2023', '28-04-2023'),
(101, 60, 56, '01-04-2023', '10-04-2023'),
 (102, 7, 27, '02-04-2023', '11-04-2023'),
 (103, 30, 34, '03-04-2023', '12-04-2023'),
 (104, 85, 4, '04-04-2023', '13-04-2023'),
 (105, 33, 10, '05-04-2023', '14-04-2023'),
 (106, 15, 47, '06-04-2023', '15-04-2023'),
 (107, 16, 18, '07-04-2023', '16-04-2023'),
 (108, 25, 53, '08-04-2023', '17-04-2023'),
 (109, 39, 14, '09-04-2023', '18-04-2023'),
 (110, 11, 33, '10-04-2023', '19-04-2023'),
 (111, 6, 5, '11-04-2023', '20-04-2023'),
 (112, 67, 28, '12-04-2023', '21-04-2023'),
 (113, 17, 29, '13-04-2023', '22-04-2023'),
 (114, 40, 15, '14-04-2023', '23-04-2023'),
 (115, 70, 6, '15-04-2023', '24-04-2023'),
 (116, 48, 48, '16-04-2023', '25-04-2023'),
 (117, 13, 21, '17-04-2023', '26-04-2023'),
 (118, 31, 39, '18-04-2023', '27-04-2023'),
 (119, 8, 7, '19-04-2023', '28-04-2023'),
 (120, 57, 35, '20-04-2023', '29-04-2023'),
 (121, 86, 20, '21-04-2023', '30-04-2023'),
 (122, 61, 54, '22-04-2023', '01-05-2023'),
 (123, 63, 37, '23-04-2023', '02-05-2023'),
 (124, 59, 19, '24-04-2023', '03-05-2023'),
 (125, 45, 12, '25-04-2023', '04-05-2023'),
 (126, 90, 31, '26-04-2023', '05-05-2023'),
 (127, 41, 50, '27-04-2023', '06-05-2023'),
 (128, 78, 36, '28-04-2023', '07-05-2023'),
 (129, 14, 11, '29-04-2023', '08-05-2023'),
 (130, 56, 30, '30-04-2023', '09-05-2023'),
 (131, 36, 16, '01-05-2023', '10-05-2023'),
 (132, 10, 8, '02-05-2023', '11-05-2023'),
 (133, 29, 22, '03-05-2023', '12-05-2023'),
 (134, 58, 3, '04-05-2023', '13-05-2023'),
 (135, 47, 43, '05-05-2023', '14-05-2023'),
 (136, 18, 58, '06-05-2023', '15-05-2023'),
 (137, 37, 9, '07-05-2023', '16-05-2023'),
 (138, 26, 52, '08-05-2023', '17-05-2023'),
 (139, 19, 2, '09-05-2023', '18-05-2023'),
 (140, 55, 46, '10-05-2023', '19-05-2023'),
 (141, 68, 32, '11-05-2023', '20-05-2023'),
 (142, 22, 23, '12-05-2023', '21-05-2023'),
 (143, 82, 38, '13-05-2023', '22-05-2023'),
 (144, 4, 1, '14-05-2023', '23-05-2023'),
 (145, 42, 50, '15-05-2023', '24-05-2023'),
 (146, 20, 44, '16-05-2023', '25-05-2023'),
 (147, 79, 51, '17-05-2023', '26-05-2023'),
 (148, 84, 26, '18-05-2023', '27-05-2023'),
 (149, 72, 4, '19-05-2023', '28-05-2023'),
 (150, 75, 40, '20-05-2023', '29-05-2023');

alter table Books
	drop column available_copies;

select count(*)  from Books 
where publication_year < 2000;

select title, publication_year,
	case 
		when publication_year < 1920 then 'Category 1'
		when publication_year < 1980 and publication_year > 1920 then 'Category 2'
		else 'Category 3'
		end publication_year
from Books;

select first_name from Customers
where first_name like 'A%'

select count(distinct customer_ID) as total_borrow
from Borrowed_books;

select * from Authors 
where first_name like '_.%'

select last_name from Customers
order by last_name asc
limit 10

select left(last_name, 3) as first3 from Authors

select * from Books
order by publication_year asc
limit 1

select title, length(title) as lenght from Books


select title ||'-'|| publication_year from Books

select right(phone_number, 7) from Customers

--TASK 2
select author_ID, first_name, last_name, concat(first_name, ' ', last_name) as full_name,
length (concat(first_name, ' ', last_name)) as name_length 
from Authors

--Task 1
select * , return_date - borrow_date as interval
from Borrowed_Books

--TASK 3
select publication_year, count(*)
from Books
group by publication_year
having count(*) > 3



--LAB 13.10

select title from books 
where book_id not in
(select book_id from borrowed_books);

select title from books where author_id in
(select author_id from authors where birth_date < '01-01-1930' );

insert into authors values (21, 'Haruki', 'Murakami', '12/01/1949'),
 (22, 'Nassim', 'Taleb', '11/09/1960'),
 (23, 'Ray', 'Bradbury', '22/08/1920');

select * from authors where author_id
not in(select author_id from books);

select first_name from authors where author_id in
(select author_id from
 (select author_id, count(*) as counter
  from books 
  group by author_id
 order by counter
 limit 15) as subquery)

select first_name from customers
where customer_id in (select customer_id from borrowed_books where book_id in 
					  (select book_id from books where title like '%Potter%'));

delete from borrowed_books
where return_date > '01-04-2023'

update  customers
set email = 'nurzhanov.e@gmail.com.'
where customer_id = 5

select book_id from borrowed_books
where customer_id in (select customer_id from 
					  (select last_name, customer_id from customers where last_name = 'Ospanov')as subquery)


select * from borrowed_books 
where EXTRACT(DOW FROM borrow_date ) = 1






