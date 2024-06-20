USE SOCIAL_LIBRARY;

-- Insert records into USERS table
INSERT INTO USERS (FULL_NAME, ADDRESS, EMAIL, RIGESTERATION_DATE, LAST_LOGIN) VALUES 
('John A. Smith', '101 Main St, Apt 1, 12345, Springfield, USA', 'john.smith@example.com', '2022-01-10', '2023-06-11'),
('Jane B. Doe', '202 Oak St, Apt 2, 67890, Shelbyville, USA', 'jane.doe@example.com', '2021-02-15', '2023-06-10'),
('Alice C. Johnson', '303 Pine St, Apt 3, 54321, Capital City, USA', 'alice.johnson@example.com', '2020-03-20', '2023-06-09'),
('Bob D. Brown', '404 Maple St, Apt 4, 09876, Ogdenville, USA', 'bob.brown@example.com', '2019-04-25', '2023-06-08'),
('Charlie E. Davis', '505 Elm St, Apt 5, 87654, North Haverbrook, USA', 'charlie.davis@example.com', '2018-05-30', '2023-06-07'),
('David F. Evans', '606 Birch St, Apt 6, 76543, Springfield, USA', 'david.evans@example.com', '2017-06-05', '2023-06-06'),
('Eve G. Wilson', '707 Cedar St, Apt 7, 65432, Shelbyville, USA', 'eve.wilson@example.com', '2016-07-10', '2023-06-05'),
('Frank H. Thomas', '808 Spruce St, Apt 8, 54321, Capital City, USA', 'frank.thomas@example.com', '2015-08-15', '2023-06-04'),
('Grace I. Lee', '909 Fir St, Apt 9, 43210, Ogdenville, USA', 'grace.lee@example.com', '2014-09-20', '2023-06-03'),
('Henry J. White', '1001 Ash St, Apt 10, 32109, North Haverbrook, USA', 'henry.white@example.com', '2013-10-25', '2023-06-02'),
('Ivy K. Martin', '1102 Poplar St, Apt 11, 21098, Springfield, USA', 'ivy.martin@example.com', '2012-11-30', '2023-06-01'),
('Jack L. Clark', '1203 Willow St, Apt 12, 10987, Shelbyville, USA', 'jack.clark@example.com', '2011-12-05', '2023-05-31'),
('Kara M. Lewis', '1304 Walnut St, Apt 13, 98765, Capital City, USA', 'kara.lewis@example.com', '2010-01-10', '2023-05-30'),
('Liam N. Walker', '1405 Chestnut St, Apt 14, 87654, Ogdenville, USA', 'liam.walker@example.com', '2009-02-15', '2023-05-29'),
('Mia O. Harris', '1506 Redwood St, Apt 15, 76543, North Haverbrook, USA', 'mia.harris@example.com', '2008-03-20', '2023-05-28'),
('Noah P. Young', '1607 Juniper St, Apt 16, 65432, Springfield, USA', 'noah.young@example.com', '2007-04-25', '2023-05-27'),
('Olivia Q. King', '1708 Palm St, Apt 17, 54321, Shelbyville, USA', 'olivia.king@example.com', '2006-05-30', '2023-05-26'),
('Paul R. Scott', '1809 Cypress St, Apt 18, 43210, Capital City, USA', 'paul.scott@example.com', '2005-06-05', '2023-05-25'),
('Quinn S. Green', '1900 Pine St, Apt 19, 32109, Ogdenville, USA', 'quinn.green@example.com', '2004-07-10', '2023-05-24'),
('Rachel T. Adams', '2001 Maple St, Apt 20, 21098, North Haverbrook, USA','rta@example.com' ,'2003-08-15', '2023-05-23');


-- Insert records into GENRE table
INSERT INTO GENRE (GENRE_NAME) VALUES 
('Fiction'),
('Non-Fiction'),
('Science Fiction'),
('Fantasy'),
('Mystery'),
('Thriller'),
('Romance'),
('Horror'),
('Biography'),
('History');

-- Insert records into AUTHOR table
INSERT INTO AUTHOR (AUTHOR_NAME) VALUES 
('George Orwell'),
('J.K. Rowling'),
('Isaac Asimov'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Stephen King'),
('Jane Austen'),
('Arthur Conan Doyle'),
('Ernest Hemingway'),
('Mark Twain');

-- Insert records into CATEGORY table
INSERT INTO CATEGORY (CATEGORY_TYPE) VALUES 
('Read'),
('Currently Reading'),
('Want to Read');

-- Insert records into BOOK table
INSERT INTO BOOK (GENRE_ID, AUTHOR_ID, TITLE, RELEASED_DATE) VALUES 
(1, 1, '1984', '1949-06-08'),
(4, 2, 'Harry Potter and the Philosopher\'s Stone', '1997-06-26'),
(3, 3, 'Foundation', '1951-05-01'),
(4, 4, 'The Hobbit', '1937-09-21'),
(5, 5, 'Murder on the Orient Express', '1934-01-01'),
(6, 6, 'The Shining', '1977-01-28'),
(7, 7, 'Pride and Prejudice', '1813-01-28'),
(5, 8, 'Sherlock Holmes: The Complete Novels and Stories', '1887-11-01'),
(9, 9, 'The Old Man and the Sea', '1952-09-01'),
(10, 10, 'The Adventures of Huckleberry Finn', '1884-12-10');

-- Insert records into BOOKSHELF table
INSERT INTO BOOKSHELF (USER_ID, BOOK_ID, CATEGORY_ID, ADDED_DATE) VALUES 
(1, 1, 1, '2023-01-01'),
(2, 2, 2, '2023-02-01'),
(3, 3, 3, '2023-03-01'),
(4, 4, 1, '2023-04-01'),
(5, 5, 2, '2023-05-01');


-- Insert records into BOOK_CLUB table
INSERT INTO BOOK_CLUB (USER_ID, CLUB_NAME, JOINED_DATE, DESCRIPTION) VALUES 
(1, 'Sci-Fi Enthusiasts', '2022-01-20', 'A club for fans of science fiction books.'),
(2, 'Fantasy Lovers', '2021-02-25', 'A club dedicated to fantasy literature.'),
(3, 'Mystery Solvers', '2020-03-30', 'A club for those who love mystery novels.'),
(4, 'Thriller Seekers', '2019-04-05', 'A club for fans of thriller books.'),
(5, 'Non-Fiction Readers', '2018-05-10', 'A club for readers of non-fiction books.');

-- Insert records into TAG table
INSERT INTO TAG (USER_ID, BOOK_ID, GENRE_ID, TAG_NAME) VALUES 
(1, 1, 1, 'Dystopia'),
(2, 2, 4, 'Magic'),
(3, 3, 3, 'Space'),
(4, 4, 4, 'Adventure'),
(5, 5, 5, 'Mystery'),
(6, 6, 6, 'Horror'),
(7, 7, 7, 'Classic'),
(8, 8, 5, 'Detective'),
(9, 9, 9, 'Nobel Prize'),
(10, 10, 10, 'American Literature');

-- Insert records into REVIEW table
INSERT INTO REVIEW (USER_ID, BOOK_ID, RATE, REVIEW_TEXT, REVIEW_DATE) VALUES 
(1, 1, 5, 'A thought-provoking masterpiece.', '2023-01-01'),
(4, 4, 3, 'An epic journey through Middle-earth.', '2023-04-01');

-- Insert records into FOLLOW table
INSERT INTO FOLLOW (FOLLOWER_USER_ID, FOLLOWING_USER_ID) VALUES 
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11);
