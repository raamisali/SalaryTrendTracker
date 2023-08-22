
-- Script which decreases the company budget, thereby decreasing all salaries by 20 percent

UPDATE Employees
SET Salary = Salary * 0.80
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Budget
    WHERE BudgetChangeType = 'Cut'
);

UPDATE Salaries
SET EffectiveDate = SYSDATETIME()
