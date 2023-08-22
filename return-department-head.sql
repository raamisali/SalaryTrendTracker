--Returns all employees who are a Department Head
SELECT
    E.FirstName,
    E.LastName,
    D.DepartmentName
FROM
    Employees E
JOIN
    Departments D ON E.EmployeeID = D.DepartmentHeadID;
