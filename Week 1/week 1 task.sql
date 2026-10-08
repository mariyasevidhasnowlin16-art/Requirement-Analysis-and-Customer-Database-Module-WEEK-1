CREATE DATABASE ecommerce_db;

USE ecommerce_db;




CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Address VARCHAR(150) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Created_Date DATE DEFAULT (CURRENT_DATE)
);


INSERT INTO Customer
(Customer_ID, Name, Email, Phone, Address, City)
VALUES
(101, 'Snowlin', 'snowlin@gmail.com', '9876543210',
 'Anna Nagar', 'Chennai'),

(102, 'Arathi', 'arathi@gmail.com', '9876543211',
 'T Nagar', 'Chennai'),

(103, 'Soundarya', 'soundarya@gmail.com', '9876543212',
 'Adyar', 'Chennai'),

(104, 'Priya', 'priya@gmail.com', '9876543213',
 'Velachery', 'Chennai'),

(105, 'Divya', 'divya@gmail.com', '9876543214',
 'Tambaram', 'Chennai');

SELECT * FROM Customer;


SELECT Customer_ID, Name, Email, City
FROM Customer;


UPDATE Customer
SET City = 'Coimbatore'
WHERE Customer_ID = 105;


SELECT * FROM Customer
WHERE Customer_ID = 105;


DELETE FROM Customer
WHERE Customer_ID = 105;

SELECT * FROM Customer;

INSERT INTO Customer
(Customer_ID, Name, Email, Phone, Address, City)
VALUES
(106, 'Kavya', 'kavya@gmail.com', '9876543215',
 'Guindy', 'Chennai');

SELECT * FROM Customer;