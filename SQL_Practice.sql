Create database data_analyst;
use data_analyst;

select database();

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Students (ID, Name, Age, City)
VALUES
(1, 'Rahul', 22, 'Delhi'),
(2, 'Aman', 25, 'Patna'),
(3, 'Priya', 20, 'Mumbai'),
(4, 'Neha', 23, 'Pune'),
(5, 'Rohit', 21, 'Jaipur');

/*
✅ SELECT *
✅ Single Column
✅ Multiple Columns */

select * from Students;
SELECT Name, Age FROM students;
SELECT City FROM Students;

/*
✅ AS Alias  */

SELECT Name as Student_Name FROM Students;
SELECT Age as Student_Age FROM Students;
SELECT 
Name as Student_Name,
Age as Student_Age,
City as Student_City
FROM Students;

/*
✅ WHERE Claus  */

SELECT * FROM Students
Where City = 'Mumbai' ;
SELECT * FROM Students
Where Age = 25;
SELECT * FROM Students
Where Name = 'Rohit';
SELECT Name , City
FROM Students
Where City = 'Patna';
SELECT * FROM Students
Where Age > 22;
SELECT * FROM Students
Where Age >= 22;
SELECT * FROM Students
Where Age < 22;
SELECT * FROM Students
Where City != 'Delhi';
SELECT Name, Age 
FROM Students
Where Age > 23;

CREATE table Employees (
 EmpID Int Primary Key,
 EmpName Varchar(50),
 Department Varchar(50),
 Salary Int
 );
 
 INSERT into Employees(EmpID,EmpName,Department,Salary)
 values
 (101, 'Ritik' , 'Sales' , 15000),
 (102,'Suraj' , 'Finance' ,20000),
 (103, 'Vikash' , 'HR' , 25000),
 (104, 'Raj' , 'Web Developer' , 18000),
 (105, 'Kunal' , 'Game Developer' , 23000)
 ;
 
 SELECT * FROM Employees;
 SELECT Name , City 
 FROM Students 
 WHERE Age <= 22;
 SELECT ID, Name, Age
 FROM Students
 WHERE City = 'Pune';
 SELECT Name 
 FROM Students
 WHERE City = 'Jaipur' AND Age = 21;
 
 SELECT EmpName, Salary
 FROM Employees;
 SELECT * FROM Employees
 Where Salary > 20000;
 SELECT * FROM Employees
 WHERE Department = 'Finance';
 SELECT EmpName, Department
 FROM Employees
 WHERE Salary >= 18000;
 SELECT * FROM Employees
 WHERE Salary < 25000;
 SELECT EmpName FROM Employees
 WHERE Department = 'HR' AND Salary = 25000;
 SELECT EmpID, EmpName, Salary
 FROM Employees 
 WHERE Salary > 15000 AND Salary < 23000;
 SELECT Department FROM Employees
 WHERE EmpName = 'Raj' ;
 SELECT * FROM Employees
 WHERE Department = 'Sales' AND Salary = 15000;
 SELECT * FROM Employees
 WHERE Department = 'HR' OR Department = 'Finance';
 SELECT * FROM Employees
 WHERE Salary > 18000 AND Department = 'Game Developer';
 SELECT * FROM Employees
 WHERE Department = 'Finance' OR Salary = 25000;
 SELECT * FROM Employees
 Where NOT Department = 'Sales';
 SELECT * FROM Employees
 WHERE Salary > 18000 AND Salary < 25000;
 SELECT * FROM Employees
 WHERE Department = 'Finance' OR Department = 'HR' 
 AND Salary >= 20000;
 SELECT * FROM Employees
WHERE NOT Department = 'Game Developer' AND Salary < 23000;
 
 SELECT * FROM Employees
 WHERE Department = 'Sales' AND Salary = 15000;
 
 SELECT * FROM Employees
 WHERE Department = 'HR' AND Salary = 20000;
 SELECT * FROM Employees
 WHERE Department = 'Game Developer' AND Salary = 23000;
 SELECT *
FROM Employees
WHERE NOT (Department = 'HR' OR Salary > 20000);

SELECT EmpName ,Department 
FROM Employees;
SELECT * FROM Employees
WHERE Salary = 20000;
SELECT EmpName, Salary
FROM Employees
WHERE Department = 'HR';
SELECT * FROM Employees
WHERE Salary > 18000;

SELECT * FROM Employees
WHERE Department = 'Finance' AND Salary = 20000;
SELECT * FROM Employees
WHERE Department = 'Sales' OR Department = 'HR';
SELECT EmpID, EmpName, Salary
FROM Employees
WHERE Salary > 15000 AND Salary < 25000;
SELECT EmpName, Department
FROM Employees
WHERE Department != 'Game Developer';

SELECT * FROM Employees
WHERE (Department = 'Finance' OR Department = 'HR')
AND Salary >= 20000;
SELECT EmpName FROM Employees
WHERE Salary < 23000 
AND Department != 'Sales' ;
     
 WHERE NOT Department = 'Game Developer' AND Salary < 23000;

/*
✅ IN  */

SELECT * FROM Employees 
WHERE Department IN ('HR' ,'Game Developer');
SELECT * FROM Employees
WHERE Salary IN (15000 ,20000 ,25000);
SELECT EmpName , Department 
FROM Employees
WHERE Department IN ('Finance' ,'Sales' ,'Web Developer' );

SELECT * FROM Employees
WHERE Department IN ('Finance' ,'HR' ); 
SELECT * FROM Employees
WHERE Salary IN (18000 ,23000 );
SELECT EmpName ,Department 
FROM Employees 
WHERE Department IN ('Sales' ,'Finance' ,'HR');
SELECT EmpName ,Salary
FROM Employees
WHERE Salary IN (15000 ,18000 ,23000 );
SELECT * FROM Employees
WHERE Department IN ('HR' ,'Game Developer' )
AND Salary IN (23000 ,25000 );
SELECT EmpName FROM Employees
WHERE Department IN ('Finance' ,'HR' ,'Web Developer')
AND Salary IN  (18000 ,20000 ,25000 );
SELECT * FROM Employees
WHERE Department IN ('Sales' ,'Finance' ,'HR')
AND Salary != 18000 ;
SELECT * FROM Employees
WHERE Department IN ('Finance' ,'Game Developer' );

/*
✅ BETWEEN  */

SELECT * FROM Employees
WHERE Salary BETWEEN 15000 AND 20000;
SELECT * FROM Students
WHERE Age BETWEEN 21 AND 23;
SELECT EmpName ,Salary
FROM Employees
WHERE Salary BETWEEN 18000 AND 25000;

-- Table Created By Me --

CREATE table Flowers (
ID INT PRIMARY KEY,
FlowerName VARCHAR(50),
City VARCHAR(50),
Price INT
);

INSERT into Flowers(ID ,FlowerName ,City ,Price)
values
(101 ,'Lily' ,'Patna' ,2700 ),
(102 ,'Lotus' ,'Vrindawan' ,2400);

SELECT * FROM Flowers;

-- New Table --

CREATE TABLE Restaurant (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Category VARCHAR(30),
    Price INT,
    Rating DECIMAL(2,1),
    Available VARCHAR(5)
);

INSERT INTO Restaurant
(ItemID, ItemName, Category, Price, Rating, Available)
VALUES
(101, 'Veg Burger', 'Burger', 120, 4.2, 'Yes'),
(102, 'Chawmin Burger', 'Burger', 180, 4.5, 'Yes'),
(103, 'Margherita Pizza', 'Pizza', 350, 4.6, 'Yes'),
(104, 'Farmhouse Pizza', 'Pizza', 450, 4.8, 'No'),
(105, 'French Fries', 'Snacks', 100, 4.1, 'Yes'),
(106, 'Cold Coffee', 'Beverage', 150, 4.3, 'Yes'),
(107, 'Cappuccino', 'Beverage', 200, 4.7, 'No'),
(108, 'Pasta Alfredo', 'Pasta', 280, 4.4, 'Yes'),
(109, 'Veg Sandwich', 'Sandwich', 140, 4.0, 'Yes'),
(110, 'Chocolate Shake', 'Beverage', 220, 4.6, 'Yes');

SELECT * FROM Restaurant
WHERE Price BETWEEN 100 AND 180;
SELECT ItemName ,Price 
FROM Restaurant
WHERE Price BETWEEN 150 AND 250;
SELECT * FROM Restaurant
WHERE Rating BETWEEN 4.2 AND 4.6;
SELECT ItemName ,Category ,Price
FROM Restaurant
WHERE Price BETWEEN 120 AND 220;
SELECT * FROM Restaurant
WHERE Available = 'Yes' 
AND Price BETWEEN 100 AND 200;
SELECT * FROM Restaurant
WHERE Category= 'Beverage'
AND (Price BETWEEN 150 AND 250);
SELECT * FROM Restaurant
WHERE (Rating BETWEEN 4.5 AND 4.8)
AND Available= 'Yes';
SELECT * FROM Restaurant
WHERE (Category= 'Pizza' OR  Category='Pasta')
AND (Price BETWEEN 250 AND 500);


 /*
✅ ORDER BY  */

SELECT * FROM Restaurant 
ORDER BY price ASC;
SELECT ItemName, Price
FROM Restaurant
ORDER BY Price DESC;
SELECT ItemName, Rating
FROM Restaurant
ORDER BY Rating DESC;

SELECT * FROM restaurant
ORDER BY itemname;
SELECT * FROM restaurant
ORDER BY itemname DESC, price desc;
-- Doubt --
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY price ;
SELECT * FROM restaurant
WHERE category= 'Beverage' 
ORDER BY rating DESC;
SELECT * FROM restaurant
WHERE price BETWEEN 100 AND 250
ORDER BY rating DESC;
SELECT * FROM restaurant
ORDER BY category , price ASC;
SELECT * FROM restaurant
ORDER BY rating DESC, itemname ASC;
SELECT * FROM restaurant
ORDER BY category ASC, price DESC;

 /*
✅ LIMIT  */

SELECT * FROM restaurant
LIMIT 5;
SELECT * FROM restaurant 
ORDER BY price DESC 
LIMIT 3;
SELECT itemname, rating
FROM restaurant
ORDER BY rating DESC
LIMIT 4;

SELECT * FROM restaurant
ORDER BY price ASC
LIMIT 4;
SELECT itemname, price
FROM restaurant 
ORDER BY price DESC
LIMIT 5;
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY price DESC
LIMIT 3;
SELECT * FROM restaurant
WHERE category= 'Beverage'
ORDER BY rating DESC
LIMIT 2;
SELECT * FROM restaurant
WHERE price BETWEEN 100 AND 250
ORDER BY rating ASC
LIMIT 3;
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY rating DESC
LIMIT 5;
SELECT * FROM restaurant
WHERE category ='Pizza' OR category= 'Pasta'
ORDER BY price DESC
LIMIT 2;
SELECT * FROM restaurant
WHERE category IN ('Burger' ,'Beverage')
ORDER BY price ASC
LIMIT 3;

 /*
✅ DISTINCT */

SELECT DISTINCT category FROM restaurant;
SELECT DISTINCT rating FROM restaurant;
SELECT DISTINCT category ,available FROM restaurant;

SELECT DISTINCT available FROM restaurant;
SELECT DISTINCT category ,rating FROM restaurant;
SELECT DISTINCT category FROM restaurant
WHERE available= 'Yes' ;
SELECT DISTINCT rating FROM restaurant
WHERE price BETWEEN 100 AND 250;
SELECT DISTINCT available FROM restaurant
WHERE category= 'Beverage';
SELECT DISTINCT category FROM restaurant
ORDER BY category ASC;
SELECT DISTINCT rating  FROM restaurant
WHERE available= 'Yes'
ORDER BY rating DESC;
SELECT DISTINCT price FROM restaurant
WHERE category IN ('Burger' ,'Beverage')
ORDER BY price ASC;

 /*
✅ 5 Aggregate Functions */

SELECT count(*) FROM restaurant;
SELECT sum(price) FROM restaurant;
SELECT AVG(rating) FROM restaurant;
SELECT min(price) FROM restaurant;
SELECT max(price) FROM restaurant;

SELECT sum(price) FROM restaurant
WHERE category= 'Beverage' ;
SELECT count(*) FROM restaurant
WHERE available= 'Yes';
SELECT avg(price) FROM restaurant
WHERE category= 'Burger';
SELECT max( rating) FROM restaurant
WHERE available= 'NO';
SELECT min(rating) FROM restaurant
WHERE price BETWEEN 150 AND 300;

/* Mobile_Store */

CREATE TABLE MobileStore (
    MobileID INT PRIMARY KEY,
    Brand VARCHAR(30),
    Model VARCHAR(50),
    Price INT,
    RAM INT,
    Storage INT,
    Rating DECIMAL(2,1),
    InStock VARCHAR(5)
);

INSERT INTO MobileStore
(MobileID, Brand, Model, Price, RAM, Storage, Rating, InStock)
VALUES
(101, 'Samsung', 'Galaxy A35', 28999, 8, 128, 4.5, 'Yes'),
(102, 'Apple', 'iPhone 15', 79999, 6, 128, 4.8, 'Yes'),
(103, 'OnePlus', 'Nord CE 4', 24999, 8, 256, 4.4, 'Yes'),
(104, 'Xiaomi', 'Redmi Note 13', 18999, 6, 128, 4.2, 'No'),
(105, 'Realme', 'Narzo 70', 16999, 8, 128, 4.1, 'Yes'),
(106, 'Vivo', 'V30', 33999, 12, 256, 4.6, 'Yes'),
(107, 'Oppo', 'Reno 11', 29999, 8, 256, 4.3, 'No'),
(108, 'Motorola', 'Edge 50 Fusion', 27999, 12, 256, 4.7, 'Yes'),
(109, 'Google', 'Pixel 8a', 52999, 8, 128, 4.8, 'Yes'),
(110, 'Nothing', 'Phone 2a', 23999, 8, 256, 4.5, 'Yes'),
(111, 'Samsung', 'Galaxy M35', 21999, 6, 128, 4.3, 'Yes'),
(112, 'Apple', 'iPhone 14', 69999, 6, 128, 4.7, 'No'),
(113, 'OnePlus', '11R', 39999, 16, 256, 4.8, 'Yes'),
(114, 'Xiaomi', 'Redmi 13', 14999, 6, 128, 4.0, 'Yes'),
(115, 'Realme', 'GT 6T', 35999, 12, 256, 4.6, 'Yes'),
(116, 'Vivo', 'T3 Pro', 26999, 8, 256, 4.4, 'No'),
(117, 'Oppo', 'A79', 19999, 8, 128, 4.2, 'Yes'),
(118, 'Motorola', 'Moto G85', 17999, 8, 128, 4.3, 'Yes'),
(119, 'Google', 'Pixel 7a', 42999, 8, 128, 4.7, 'No'),
(120, 'Nothing', 'Phone 2', 44999, 12, 256, 4.8, 'Yes');

SELECT * FROM mobilestore;

SELECT count(*) FROM mobilestore;
SELECT sum(price) FROM mobilestore;
SELECT avg(rating) FROM mobilestore
WHERE brand= 'Samsung';
SELECT max(price) FROM mobilestore
WHERE instock= 'Yes';
SELECT min(price) FROM mobilestore 
WHERE ram= 8;
SELECT count(*) FROM mobilestore
WHERE price BETWEEN 20000 AND 40000;
SELECT sum(price) FROM mobilestore
WHERE brand IN ('Apple' ,'Samsung' );
SELECT avg(price) FROM mobilestore
WHERE storage= 256 AND instock= 'Yes' ;

SELECT count(*) AS Total_Mobiles FROM mobilestore;
SELECT count(*) AS Samsung_Brand_Mobiles  FROM mobilestore WHERE brand= 'Samsung';
SELECT count(*) AS Expensive_Mobiles FROM mobilestore WHERE price > 30000;
SELECT sum(price) AS Total_Price FROM mobilestore;
SELECT sum(price) AS Total_Price_Of_Apple FROM mobilestore WHERE brand= 'Apple';
SELECT avg(price) AS AVG_PRICE_OF_ONEPLUS FROM mobilestore WHERE brand= 'OnePlus';
SELECT max(rating) AS HIGHEST_RATING_MOBILE FROM mobilestore WHERE instock= 'Yes';
SELECT min(price) AS lowest_Price_256 FROM mobilestore WHERE storage= 256;

SELECT COUNT(*) AS Samsung_Mobiles FROM mobilestore 
WHERE brand= 'Samsung' ;
SELECT SUM(price) AS Apple_Total_Price FROM mobilestore
WHERE brand= 'Apple' ;
SELECT model, price FROM mobilestore
WHERE price > 30000 ORDER BY price DESC;
SELECT count(*) AS Total_Mobile FROM mobilestore WHERE ram= 8 AND storage= 256;
SELECT avg(rating)  AS Avg_Rating FROM mobilestore WHERE brand IN ('Samsung' ,'OnePlus');
SELECT brand, model, price FROM mobilestore WHERE price BETWEEN 20000 AND 40000
ORDER BY price ASC;
SELECT max(price) AS Expensive_Mobile FROM mobilestore WHERE instock= 'Yes' AND storage= 256;
SELECT count(*) AS Android_IN_Budget FROM mobilestore WHERE brand != 'Apple' AND price < 30000;
SELECT DISTINCT brand FROM mobilestore WHERE rating >= 4.5 ORDER BY brand ASC;
SELECT avg(price) FROM mobilestore 
WHERE brand IN ('Samsung' ,'OnePlus' ,'Motorola') 
AND price BETWEEN 20000 AND 40000 AND instock= 'Yes' AND ( storage= 256 OR ram= 12);



-- Database Name ✅ --
use sys;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, Department, Salary)
VALUES
(101, 'Ritik', 'Sales', 15000),
(102, 'Suraj', 'Finance', 20000),
(103, 'Vikash', 'HR', 25000),
(104, 'Raj', 'IT', 18000),
(105, 'Kunal', 'Marketing', 23000);
SELECT * FROM employees;

-- ADD COLUMN --

ALTER table employees 
ADD COLUMN Age INT ;
ALTER table employees
ADD COLUMN City VARCHAR(50);
ALTER table employees
ADD COLUMN JoiningDate DATE ;
ALTER table employees
ADD COLUMN Email VARCHAR(100);
ALTER table Employees
ADD COLUMN Experience DECIMAL(3,1)  DEFAULT 0.0;

-- MODIFY --

ALTER table Employees
MODIFY COLUMN EmpName VARCHAR(100) ;
-- my query --
ALTER TABLE Employees
MODIFY COLUMN Email INT;
ALTER TABLE Employees
MODIFY COLUMN Department VARCHAR(100) ;
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(12,2); -- Changing Data Type: DECIMAL(10,2) to DECIMAL(12,2)
ALTER TABLE Employees
MODIFY COLUMN EmpID BIGINT;
ALTER TABLE Employees
MODIFY COLUMN EmpName VARCHAR(100) NOT NULL ;

-- RENAME --

ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName ;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, StudentName, Course, Marks, City)
VALUES
(1, 'Amit', 'Python', 85, 'Ranchi'),
(2, 'Rahul', 'SQL', 78, 'Bokaro'),
(3, 'Priya', 'Excel', 92, 'Dhanbad'),
(4, 'Neha', 'Power BI', 88, 'Jamshedpur'),
(5, 'Vikas', 'Python', 75, 'Ranchi');

SELECT * FROM Students ;

ALTER TABLE students
RENAME COLUMN StudentName TO Name ;
ALTER TABLE Students
RENAME COLUMN Course TO CourseName;
ALTER TABLE students
RENAME COLUMN Marks TO Score;
ALTER TABLE Students
RENAME column StudentID TO ID ;
ALTER TABLE students
RENAME 	column City TO StudentCity ;

-- DROP --

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Supplier VARCHAR(50),
    Discount INT
);

INSERT INTO Products
(ProductID, ProductName, Category, Price, Stock, Supplier, Discount)
VALUES
(101, 'Laptop', 'Electronics', 55000, 10, 'Dell', 5),
(102, 'Mouse', 'Accessories', 800, 25, 'Logitech', 10),
(103, 'Keyboard', 'Accessories', 1500, 18, 'HP', 8),
(104, 'Monitor', 'Electronics', 12000, 12, 'Samsung', 7),
(105, 'Printer', 'Electronics', 15000, 6, 'Canon', 12);

SELECT * FROM Products ;

ALTER TABLE products 
DROP COLUMN Discount ;
ALTER TABLE Products
DROP COLUMN Supplier ;
ALTER TABLE products
DROP COLUMN Stock ;
ALTER TABLE products
DROP COLUMN Category ;
ALTER TABLE products
DROP COLUMN price ;

-- RENAME TABLE--

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(50),
    Author VARCHAR(50),
    Price INT
);

INSERT INTO Books VALUES
(1, 'Atomic Habits', 'James Clear', 500),
(2, 'Ikigai', 'Hector Garcia', 350),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 450);    

SELECT * FROM LibraryBooks;


CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(50),
    Genre VARCHAR(30),
    Rating DECIMAL(2,1)
);

INSERT INTO Movies VALUES
(101, 'Inception', 'Sci-Fi', 8.8),
(102, '3 Idiots', 'Drama', 8.4),
(103, 'Dangal', 'Sports', 8.3);

SELECT * FROM FilmCollection ;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration INT,
    Fees INT
);

INSERT INTO Courses VALUES
(1, 'Python', 6, 5000),
(2, 'SQL', 4, 3500),
(3, 'Power BI', 3, 4000);

SELECT * FROM TrainingCourses ;

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Airline VARCHAR(50),
    Destination VARCHAR(50),
    TicketPrice INT
);

INSERT INTO Flights VALUES
(501, 'IndiGo', 'Delhi', 4500),
(502, 'Air India', 'Mumbai', 5200),
(503, 'Vistara', 'Bangalore', 6100);

SELECT * FROM FlightSchedule ;

CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(50),
    City VARCHAR(50),
    Beds INT
);

INSERT INTO Hospitals VALUES
(1, 'City Hospital', 'Ranchi', 100),
(2, 'Life Care', 'Bokaro', 75),
(3, 'Medicare', 'Dhanbad', 120);

SELECT * FROM MedicalCenters ;

RENAME TABLE Books TO LibraryBooks ;
RENAME TABLE Movies TO FilmCollection ;
RENAME TABLE Courses TO TrainingCourses ;
RENAME TABLE Flights TO FlightSchedule ;
RENAME TABLE Hospitals TO MedicalCenters ;

-- CHANGE COLUMN --

CREATE TABLE AdventureTrips (
    TripID INT PRIMARY KEY,
    TripName VARCHAR(50),
    Location VARCHAR(50),
    Participants INT,
    Price INT,
    GuideName VARCHAR(50)
);

INSERT INTO AdventureTrips
(TripID, TripName, Location, Participants, Price, GuideName)
VALUES
(101, 'Mountain Trek', 'Manali', 12, 8500, 'Arjun'),
(102, 'River Rafting', 'Rishikesh', 8, 4500, 'Rohan'),
(103, 'Desert Safari', 'Jaisalmer', 15, 6000, 'Kabir'),
(104, 'Forest Camping', 'Jim Corbett', 10, 5500, 'Aditya'),
(105, 'Scuba Diving', 'Goa', 6, 9000, 'Varun');

SELECT * FROM AdventureTrips ;

ALTER TABLE adventuretrips
CHANGE COLUMN TripName AdventureName VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Location Destination VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Participants TotalParticipants SMALLINT ;
ALTER TABLE adventuretrips
CHANGE COLUMN Price TripPrice DECIMAL(10,2);
ALTER TABLE adventuretrips
CHANGE COLUMN GuideName TripGuide VARCHAR(100) NOT NULL ;

-- UPDATE --

CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Product VARCHAR(50),
    Amount INT,
    Status VARCHAR(20),
    Discount INT
);

INSERT INTO CustomerOrders
(OrderID, CustomerName, City, Product, Amount, Status, Discount)
VALUES
(201, 'Aman', 'Ranchi', 'Laptop', 55000, 'Pending', 5),
(202, 'Rahul', 'Pune', 'Mobile', 30000, 'Delivered', 10),
(203, 'Priya', 'Delhi', 'Tablet', 22000, 'Pending', 0),
(204, 'Neha', 'Pune', 'Laptop', 65000, 'Shipped', 8),
(205, 'Rohit', 'Mumbai', 'Headphones', 5000, 'Delivered', 5),
(206, 'Sneha', NULL, 'Mobile', 28000, 'Pending', 0),
(207, 'Karan', 'Delhi', 'Laptop', 70000, 'Pending', 10),
(208, 'Anjali', 'Ranchi', 'Tablet', 18000, 'Delivered', 5);

SELECT * FROM CustomerOrders ;

SET SQL_SAFE_UPDATES = 0;

-- Aman ke order ka Status 'Delivered' kar do 
UPDATE CustomerOrders
SET status= 'Delivered' 
WHERE customerName= 'Aman' ;

-- Jin orders ka City = 'Pune' hai, unka Discount 2 se increase kar do.
UPDATE customerOrders
SET Discount= Discount + 2
WHERE City= 'Pune' ;

-- OrderID = 203 wale customer ka:
-- Amount → 25000
-- Status → 'Shipped'
UPDATE customerOrders
SET Amount= 25000 , Status= 'Shipped' 
WHERE orderID= 203;

-- Jin orders ka Status = 'Pending' hai, unke Discount mein 5 add karo
UPDATE customerOrders
SET Discount= Discount + 5
WHERE  Status= 'Pending' ;

-- Jin orders ka City 'Pune' nahi hai, unka Status 'Processing' kar do.
UPDATE customerOrders
SET Status= 'Processing'
WHERE City != 'Pune';


-- Jin orders ka:
-- Amount > 50000
-- AND
-- Status = 'Pending'
-- hai, unka Discount 10 kar do.
UPDATE customerorders
SET Discount= 10
WHERE amount > 50000 AND status= 'Pending' ; 

-- Jin orders ka:
-- City = 'Delhi' OR  City = 'Ranchi'
-- hai, unka Status 'Priority' kar do.
UPDATE customerOrders
SET Status= 'Priority'
WHERE city= 'Delhi' OR city= 'Ranchi' ;

-- Jin orders ka City NULL hai, unka City 'Unknown' kar do.
UPDATE customerOrders
SET city= 'Unknown'
WHERE city IS NULL ;

SET SQL_SAFE_UPDATES = 1;

-- DELETE --

CREATE TABLE MovieTickets (
    TicketID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    MovieName VARCHAR(50),
    City VARCHAR(30),
    TicketPrice INT,
    Seats INT,
    Status VARCHAR(20)
);

INSERT INTO MovieTickets
(TicketID, CustomerName, MovieName, City, TicketPrice, Seats, Status)
VALUES
(401, 'Arjun', 'Pushpa 2', 'Ranchi', 250, 2, 'Booked'),
(402, 'Riya', 'Jawan', 'Delhi', 300, 3, 'Booked'),
(403, 'Karan', 'Pathaan', 'Mumbai', 200, 1, 'Cancelled'),
(404, 'Neha', 'Dunki', 'Pune', 350, 4, 'Booked'),
(405, 'Aman', 'Animal', 'Ranchi', 180, 2, 'Cancelled'),
(406, 'Priya', 'Jawan', 'Delhi', 300, 5, 'Booked'),
(407, 'Rahul', 'Dunki', 'Mumbai', 350, 1, 'Cancelled'),
(408, 'Sneha', 'Pathaan', 'Pune', 200, 3, 'Booked'),
(409, 'Vikas', 'Animal', 'Ranchi', 180, 1, 'Cancelled'),
(410, 'Anjali', 'Pushpa 2', 'Delhi', 250, 2, 'Booked');

SELECT * FROM MovieTickets ;

-- TicketID = 403 wala record delete karo.
DELETE FROM MovieTickets
WHERE TicketID= 403;

SET SQL_SAFE_UPDATES= 0;

-- Jin tickets ka Status = 'Cancelled' hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE status= 'Cancelled' ;

-- Jin tickets ka TicketPrice 200 se kam hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE ticketprice < 200 ;

-- Jin tickets ka:
-- City = 'Delhi' AND Seats >= 3
-- hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE City= 'Delhi' AND Seats >= 3;

-- Jin tickets ka:
-- City = 'Ranchi' OR City = 'Pune'
DELETE FROM MovieTickets
WHERE city= 'Ranchi' OR city= 'Pune' ;

-- Jin tickets ka:
-- TicketPrice > 200 AND Status != 'Cancelled'
-- hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE TicketPrice > 200 AND Status != 'Cancelled' ;

-- TRUNCATE --

CREATE TABLE TravelBookings (
    BookingID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Destination VARCHAR(50),
    Amount INT
);

INSERT INTO TravelBookings VALUES
(101, 'Aman', 'Goa', 12000),
(102, 'Riya', 'Manali', 18000),
(103, 'Karan', 'Jaipur', 9000);
SELECT * FROM TravelBookings ;

-- TravelBookings table ka saara data remove karo using TRUNCATE.
TRUNCATE TABLE TravelBookings ;

CREATE TABLE GameScores (
    ScoreID INT PRIMARY KEY,
    PlayerName VARCHAR(50),
    Game VARCHAR(50),
    Score INT
);

INSERT INTO GameScores VALUES
(1, 'Rahul', 'Cricket', 85),
(2, 'Vikas', 'Football', 92),
(3, 'Neha', 'Badminton', 78);
SELECT * FROM GameScores ;

-- GameScores table ka poora data clear karo using TRUNCATE.
TRUNCATE TABLE GameScores;

CREATE TABLE FoodOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    FoodItem VARCHAR(50),
    Amount INT
);

INSERT INTO FoodOrders VALUES
(201, 'Amit', 'Pizza', 450),
(202, 'Priya', 'Burger', 250),
(203, 'Rohit', 'Pasta', 350);
SELECT * FROM FoodOrders ;

-- FoodOrders ka saara data ek saath delete karo, lekin table ko delete nahi karna hai.
TRUNCATE TABLE FoodOrders ;

CREATE TABLE EventTickets (
    TicketID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    EventName VARCHAR(50),
    TicketPrice INT
);

INSERT INTO EventTickets VALUES
(301, 'Arjun', 'Concert', 1500),
(302, 'Simran', 'Comedy Show', 800),
(303, 'Kunal', 'Music Fest', 2000);
SELECT * FROM EventTickets;

-- EventTickets table ko completely empty karo using the correct command.
TRUNCATE TABLE EventTickets ;

CREATE TABLE FitnessMembers (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50),
    Plan VARCHAR(30),
    Fees INT
);

INSERT INTO FitnessMembers VALUES
(401, 'Varun', 'Monthly', 1500),
(402, 'Sneha', 'Quarterly', 4000),
(403, 'Aditya', 'Yearly', 12000);
SELECT * FROM FitnessMembers ;

-- FitnessMembers ka saara existing data remove karo, but table structure aur columns ko maintain rakhna hai.
TRUNCATE TABLE FitnessMembers ;

CREATE TABLE OnlineCourses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Instructor VARCHAR(50),
    Fees INT
);

INSERT INTO OnlineCourses VALUES
(501, 'Python', 'Rahul Sharma', 5000),
(502, 'SQL', 'Amit Verma', 4000),
(503, 'Power BI', 'Neha Singh', 6000);
SELECT * FROM OnlineCourses ;

-- OnlineCourses table ko empty karo using TRUNCATE, aur kisi bhi row ko individually delete karne ke liye DELETE use nahi karna hai.
TRUNCATE TABLE OnlineCourses ;
    
/*
✅ GROUP BY */

SELECT brand , count(*) AS Total_Mobiles FROM mobilestore GROUP BY brand;
SELECT brand , avg(price) AS Avg_Price FROM mobilestore GROUP BY brand;
SELECT brand , max(price) AS Highest_Price FROM mobilestore GROUP BY brand;
SELECT brand , min(price) AS Lowest_Price FROM mobilestore GROUP BY brand;
SELECT ram , count(*) AS Total_Mobiles FROM mobilestore GROUP BY ram;
SELECT storage, avg(price) AS Avg_Price FROM mobilestore GROUP BY storage;
SELECT brand, max(rating) AS Highest_Rating FROM mobilestore GROUP BY brand;
SELECT instock, count(*) AS Total_Mobile FROM mobilestore GROUP BY instock;

SELECT brand, count(*) AS Total_Mobile FROM mobilestore 
GROUP BY brand 
ORDER BY brand ASC;
SELECT brand, avg(price) AS Avg_Price FROM mobilestore
GROUP BY brand 
ORDER BY avg(price) DESC;
SELECT ram, count(*) AS Total_Mobile FROM mobilestore 
WHERE instock= 'Yes'
GROUP BY ram ;
SELECT storage, max(price) AS Highest_Price FROM mobilestore
WHERE price > 20000
GROUP BY storage;
SELECT brand, min(rating) FROM mobilestore 
WHERE storage= 256
GROUP BY brand;
SELECT brand, count(*) AS Total_Mobiles FROM mobilestore
WHERE price BETWEEN 20000 AND 40000
GROUP BY brand
ORDER BY Total_Mobiles DESC;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore 
WHERE brand IN ('Samsung','OnePlus','Motorola')
GROUP BY ram;
SELECT brand, max(rating) AS Highest_Rating FROM mobilestore 
WHERE instock= 'Yes'
AND price > 20000
GROUP BY brand
ORDER BY max(rating) DESC;


 /*
✅ HAVING Clause */

SELECT brand, count(*) AS Total_Mobiles FROM mobilestore 
GROUP BY brand
HAVING Total_Mobiles >= 2;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore
GROUP BY ram
HAVING Avg_Price > 30000;
SELECT storage, max(price) AS Highest_Price FROM mobilestore
GROUP BY storage
HAVING Highest_Price > 50000;
SELECT brand, min(rating) AS min_rating FROM mobilestore
GROUP BY brand
HAVING min(rating) >= 4.5;
SELECT brand, count(*) AS total_mobile FROM mobilestore
WHERE instock= 'Yes'
GROUP BY brand
HAVING count(*) >= 2;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore
WHERE price > 20000 
GROUP BY ram
HAVING avg(price) > 30000;
SELECT storage, count(*) AS total_mobile FROM mobilestore
WHERE brand IN ( 'Samsung' ,'Oneplus' ,'Apple')
GROUP BY storage
HAVING count(*) >= 3;
SELECT brand, max(rating) AS highest_rating FROM mobilestore
WHERE instock= 'Yes' AND price BETWEEN 20000 AND 50000 
GROUP BY brand
HAVING highest_rating >= 4.6
ORDER BY highest_rating DESC;

 /*
✅ JOIN */

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Customers
(CustomerID, CustomerName, City)
VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Aman', 'Mumbai'),
(3, 'Neha', 'Pune'),
(4, 'Priya', 'Jaipur'),
(5, 'Rohan', 'Lucknow'),
(6, 'Anjali', 'Delhi'),
(7, 'Karan', 'Chandigarh'),
(8, 'Simran', 'Amritsar'),
(9, 'Vikas', 'Indore'),
(10, 'Pooja', 'Bhopal');

SELECT * FROM customers;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO Orders
(OrderID, CustomerID, ProductName, Amount)
VALUES
(101, 1, 'Laptop', 65000),
(102, 2, 'Keyboard', 1500),
(103, 3, 'Mouse', 800),
(104, 4, 'Monitor', 12000),
(105, 5, 'Printer', 9000),
(106, 6, 'Headphones', 2500),
(107, 7, 'SSD', 4500),
(108, 8, 'Webcam', 3000),
(109, 9, 'Tablet', 22000),
(110, 10, 'Speaker', 5000);

SELECT customername, productname
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID;
SELECT customerName, city, amount 
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID;
SELECT customerName, productName, amount
FROM customers 
INNER JOIN orders
ON customers.customerID = orders.customerID
WHERE amount > 10000;
SELECT customerName, productName, amount
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID
WHERE city= 'Delhi';
SELECT CustomerName, ProductName, Amount
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID
WHERE Amount BETWEEN 2000 AND 10000;
SELECT customerName, city, productName, Amount
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID
ORDER BY amount DESC;
SELECT customerName, city, productName
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID
WHERE city IN ('Mumbai' , 'Delhi')
ORDER BY customerName ASC;
SELECT customerName, productName, amount
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID
WHERE amount > 3000 AND city != 'Delhi'
ORDER BY amount DESC, customerName ASC;
-- by me --
SELECT * 
FROM customers
INNER JOIN orders
ON customers.customerID = orders.customerID ;

/*
✅ LEFT JOIN */

INSERT INTO Customers
(CustomerID, CustomerName, City)
VALUES
(11, 'Deepak', 'Noida'),
(12, 'Meera', 'Surat');

SELECT customerName , productName
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID ;
SELECT customerName , city , productName
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID ;
SELECT customerName , productName
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
WHERE city = 'Delhi' ;
SELECT customerName , productName , amount
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
ORDER BY customername ASC;
SELECT customername , city , productname
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
WHERE city IN ('Delhi' ,'Mumbai' );
SELECT customerName, city
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
WHERE orders.customerID IS NULL ;
SELECT count(*) 
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
WHERE orders.customerID IS NULL ;
SELECT customerName ,city ,productName ,amount
FROM customers
LEFT JOIN orders
ON customers.customerID = orders.customerID 
ORDER BY customerName ASC ,amount DESC ;

/*
✅ RIGHT JOIN */

INSERT INTO Orders
(OrderID, CustomerID, ProductName, Amount)
VALUES
(111, 15, 'Smart Watch', 7000),
(112, 16, 'Gaming Mouse', 2500);


SELECT *
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID ;

SELECT customerName, productName 
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID ;
SELECT customerName, productName, amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID;
SELECT customerName, productName, amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID
WHERE amount > 5000;
SELECT customerName ,productName ,amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID 
ORDER BY amount DESC ;
SELECT customerName, productName, amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID
WHERE amount BETWEEN 2000 AND 10000;
SELECT productName, amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID
WHERE customers.customerID IS NULL;
SELECT count(*)
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID
WHERE customers.customerID IS NULL;
SELECT customerName, productName, amount
FROM customers
RIGHT JOIN orders
ON customers.customerID = orders.customerID 
WHERE amount > 2000
ORDER BY amount DESC, productName ASC;
















