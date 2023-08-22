
-- Query returns the salary for each employee with their full name and position
SELECT

E.FirstName,
E.LastName,
E.Position,
E.Salary,
S.EffectiveDate

FROM Employees E

JOIN Salaries S on E.EmployeeID = S.SalaryID