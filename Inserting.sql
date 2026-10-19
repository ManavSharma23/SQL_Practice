use learning;


INSERT INTO Customer_Details VALUES
(1,'Arjun',24,'Male','2002-11-16',DEFAULT),
(2,'Daksh',21,'Male','2005-09-24',DEFAULT),
(3,'Ananya',20,'Female','2006-01-13',DEFAULT),
(5,'Rohan',22,'Male','2004-03-12',DEFAULT),
(6,'Priya',23,'Female','2003-07-25',DEFAULT),
(7,'Aditya',25,'Male','2001-12-08',DEFAULT),
(8,'Sneha',21,'Female','2005-04-19',DEFAULT),
(9,'Vikram',26,'Male','2000-08-14',DEFAULT),
(10,'Kavya',22,'Female','2004-06-30',DEFAULT),
(11,'Rahul',24,'Male','2002-02-17',DEFAULT),
(12,'Ishita',20,'Female','2006-09-05',DEFAULT),
(13,'Karan',27,'Male','1999-11-22',DEFAULT),
(14,'Meera',23,'Female','2003-01-09',DEFAULT),
(15,'Siddharth',28,'Male','1998-05-16',DEFAULT),
(16,'Pooja',22,'Female','2004-10-27',DEFAULT),
(17,'Varun',25,'Male','2001-07-03',DEFAULT),
(18,'Aditi',21,'Female','2005-12-11',DEFAULT),
(19,'Nikhil',24,'Male','2002-04-21',DEFAULT),
(20,'Riya',20,'Female','2006-03-08',DEFAULT),
(21,'Harsh',26,'Male','2000-01-29',DEFAULT),
(22,'Simran',23,'Female','2003-08-17',DEFAULT),
(23,'Yash',22,'Male','2004-11-06',DEFAULT),
(24,'Neha',25,'Female','2001-06-14',DEFAULT),
(25,'Manish',27,'Male','1999-09-23',DEFAULT),
(26,'Tanya',21,'Female','2005-02-28',DEFAULT),
(27,'Aman',24,'Male','2002-07-19',DEFAULT),
(28,'Diya',20,'Female','2006-05-12',DEFAULT),
(29,'Saurabh',26,'Male','2000-10-04',DEFAULT),
(30,'Naina',23,'Female','2003-12-20',DEFAULT);

INSERT INTO Customer_Details(Name,Age,Gender,Date_Of_Birth) VALUES
('Harry',34,'Male','1992-02-25');

SELECT * from Customer_Details;

DESC Customer_Details;

SELECT Name,Gender from Customer_Details;



