
-- Script which increases the company budget, thereby increasing all salaries by 10 percent

UPDATE Employees
SET Salary = Salary * 1.10
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Budget
    WHERE BudgetChangeType = 'Increase'
);

UPDATE Salaries
SET EffectiveDate = SYSDATETIME()
