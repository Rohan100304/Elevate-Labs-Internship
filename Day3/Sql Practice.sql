use northwind;


SELECT ProductID, SUM(Quantity) AS TotalUnitsSold
FROM OrderDetails
GROUP BY ProductID
HAVING SUM(Quantity) > 10
ORDER BY TotalUnitsSold DESC;





SELECT p.ProductName, od.OrderID, od.Quantity
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
ORDER BY p.ProductName;




SELECT p.ProductName, od.OrderID, od.Quantity
FROM Products p
RIGHT JOIN OrderDetails od ON p.ProductID = od.ProductID
ORDER BY od.OrderID;





SELECT ProductName
FROM Products
WHERE ProductID IN (
    SELECT DISTINCT ProductID
    FROM OrderDetails
);


CREATE VIEW CustomersWithOrderCount1 AS
SELECT c.CustomerID ,c.customername, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;


select * from CustomersWithOrderCount1;







SELECT MAX(Price) AS MostExpensive, MIN(Price) AS LeastExpensive
FROM Products;



SELECT o.OrderID, c.CustomerName, e.FirstName AS EmployeeFirstName, o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;







