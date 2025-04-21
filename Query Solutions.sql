-- 1. Retrieve the names and contact details of employees hired after January 1, 2023.
SELECT FirstName, LastName, Email, Phone
FROM Employees
WHERE HireDate > '2023-01-01';

-- 2. Find the total payroll amount paid to each department.
SELECT e.DepartmentID, d.DepartmentName, SUM(p.Amount) AS TotalPayroll
FROM Payroll p
JOIN Employees e ON p.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID, d.DepartmentName
ORDER BY e.DepartmentID ASC;

-- 3. List all employees who have not been assigned a manager.
SELECT FirstName, LastName
FROM Employees
WHERE ManagerID IS NULL;

-- 4. Retrieve the highest salary in each department along with the employee’s name.
SELECT e.FirstName, e.LastName, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary = (
  SELECT MAX(Salary)
  FROM Employees e2
  WHERE e2.DepartmentID = e.DepartmentID
);

-- 5. Find the most recent performance review for each employee.
SELECT pr.EmployeeID, e.FirstName, e.LastName, pr.ReviewDate, pr.PerformanceScore
FROM PerformanceReviews pr
JOIN Employees e ON pr.EmployeeID = e.EmployeeID
WHERE pr.ReviewDate = (
  SELECT MAX(ReviewDate)
  FROM PerformanceReviews pr2
  WHERE pr2.EmployeeID = pr.EmployeeID
);

-- 6. Count the number of employees in each department.
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

--7. List all employees who have received a performance score of "Excellent." Identify the most frequently used payment method in payroll.
-- Part A: Excellent performers
SELECT e.FirstName, e.LastName
FROM PerformanceReviews pr
JOIN Employees e ON pr.EmployeeID = e.EmployeeID
WHERE pr.PerformanceScore = 'Excellent';

-- Part B: Most frequent payment method
SELECT PaymentMethod, COUNT(*) AS Count
FROM Payroll
GROUP BY PaymentMethod
ORDER BY Count DESC
LIMIT 1;

-- 8. Retrieve the top 5 highest-paid employees along with their departments.
SELECT e.FirstName, e.LastName, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY e.Salary DESC
LIMIT 5;

-- 9. Showdetails of all employees who report directly to a specific manager (e.g., ManagerID = 101)
SELECT FirstName, LastName, Email
FROM Employees
WHERE ManagerID = 101;






