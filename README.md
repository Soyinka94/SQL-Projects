# SQL-Projects
# Sales Data Analysis Project

## Project Overview
This project aims to analyze sales data to determine trends, identify top-selling products, and segment customers based on demographics. The analysis helps in understanding sales patterns and customer behavior, which can be leveraged for strategic decision-making.

## Dataset
- **Sales Data:** Contains order information including OrderID, OrderDate, CustomerID, ProductID, Quantity, Price, and Total.
- **Customers Data:** Contains customer information including CustomerID, Name, Age, Gender, and Location.
- **Products Data:** Contains product information including ProductID, ProductName, and Category.

## Data Preparation and Cleaning
- The datasets were imported into MySQL using `LOAD DATA INFILE` commands.
- Data cleaning involved handling missing values and removing duplicates using SQL queries.

## Analysis
### Total Sales Calculation
- Calculated the total sales across all orders to understand the overall revenue generated.

### Top-Selling Products
- Identified the products with the highest sales volumes to determine which products are the most popular.

### Sales Trends Over Time
- Analyzed sales data over different time periods to identify trends and seasonal patterns.

### Customer Segmentation
- Segmented customers based on demographics such as gender, age, and location to understand customer distribution and preferences.

## SQL Queries
- The SQL queries used for the analysis are as follows:

### Total Sales Calculation
```sql
SELECT SUM(Total) AS TotalSales
FROM sales;
"# SQL-Project" 
"# SQL-Project" 
"# SQL-Projects" 
