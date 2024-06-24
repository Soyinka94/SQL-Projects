CREATE DATABASE sales_analysis;

USE sales_analysis;

CREATE TABLE sales (
	OrderID INT,
    OrderDate INT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    Total DECIMAL(10, 2)
);

CREATE TABLE customer (
	CustomerID INT,
    Name VARCHAR(50),
    AGE INT,
    Gender VARCHAR(6),
    Location VARCHAR(50)
);

CREATE TABLE products (
	ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50)
);


INSERT INTO sales (OrderID, OrderDate, CustomerID, ProductID, Quantity, Price, Total)
VALUES  (1, 01/06/2024, 101, 201, 2, 50, 100),
		(2, 02/06/2024, 102, 202, 1, 30, 30),
        (3, 03/06/2024, 103, 203, 3, 20, 60),
        (4, 04/06/2024, 101, 204, 1, 100, 100),
        (5, 05/06/2024, 104, 201, 4, 50, 200),
        (6, 06/06/2024, 102, 205, 2, 150, 300);


SELECT * FROM sales;
SELECT * FROM customer;
SELECT * FROM products;


SELECT SUM(Total) AS TotalSales
FROM sales;


SELECT p.ProductName, SUM(s.Quantity) AS TotalQuantity
FROM sales s
JOIN products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantity DESC;


SELECT date_format(OrderDate, '%Y-%m') AS Month, SUM(Total) AS MonthlySales
FROM sales
GROUP BY Month
ORDER BY Month;


SELECT c.Gender, COUNT(DISTINCT c.CustomerID) AS CustomerCount, SUM(s.Total) AS TotalSales
FROM sales s
JOIN customer c ON s.CustomerID = c.CustomerID
Group BY c.Gender;

SELECT c.Age, COUNT(DISTINCT c.CustomerID) AS CustomerCount, SUM(s.Total) AS TotalSales
FROM sales s
JOIN customer c ON s.CustomerID = c.CustomerID
Group BY c.Age
ORDER BY c.Age;

SELECT c.Location, COUNT(DISTINCT c.CustomerID) AS CustomerCount, SUM(s.Total) AS TotalSales
FROM sales s
JOIN customer c ON s.CustomerID = c.CustomerID
Group BY c.Location
ORDER BY TotalSales DESC;