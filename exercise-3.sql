/*1. How many suppliers are there? Use a query!
2. What is the sum of all the employee's salaries?
3. What is the price of the cheapest item that Northwind sells?
4. What is the average price of items that Northwind sells?
5. What is the price of the most expensive item that Northwind sells?
6. What is the supplier ID of each supplier and the number of items they
supply? You can answer this query by only looking at the Products table.
7. What is the category ID of each category and the average price of each item
in the category? You can answer this query by only looking at the Products
table.
8. For suppliers that provide at least 5 items to Northwind, what is the
supplier ID of each supplier and the number of items they supply? You
can answer this query by only looking at the Products table.
9. List the product id, product name, and inventory value (calculated by
multiplying unit price by the number of units on hand). Sort the results in
descending order by value. If two or more have the same value, order by
product name.
*/
SELECT COUNT(*) from northwind.suppliers;
SELECT SUM(Salary) from northwind.employees;
SELECT MIN(UnitPrice) from northwind.products;
SELECT AVG(UnitPrice) from northwind.products;
SELECT MAX(UnitPrice) from northwind.products;
SELECT SupplierID, COUNT(*) from northwind.products GROUP BY SupplierID;
SELECT CategoryID, AVG(UnitPrice) from northwind.products GROUP BY CategoryID;
SELECT SupplierID, COUNT(*) AS NumberOfItems
FROM northwind.products
GROUP BY SupplierID
HAVING COUNT(*) >=5;
SELECT 
  ProductID, 
  ProductName, 
  UnitPrice * UnitsInStock AS InventoryValue
FROM northwind.products
ORDER BY 
  InventoryValue DESC,
  ProductName ASC;
