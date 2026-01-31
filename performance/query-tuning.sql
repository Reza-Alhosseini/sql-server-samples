-- NOTE:
-- Demonstration-only SQL script (no real production data)

-- Example: Query tuning using execution plan improvements

SELECT 
    o.CustomerID,
    COUNT(o.OrderID) AS OrderCount
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY o.CustomerID;
