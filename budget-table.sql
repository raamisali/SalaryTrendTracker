CREATE TABLE Budget (
    ProjectID INT PRIMARY KEY,
    BudgetChangeAmount DECIMAL(18, 2),
    BudgetChangeType VARCHAR(10),
    StartDate DATE
);

INSERT INTO Budget (ProjectID, BudgetChangeAmount, BudgetChangeType, StartDate)
VALUES
    (1, 50000, 'Increase', '2023-01-01'),
    (2, -30000, 'Cut', '2023-02-15'),
    (3, 20000, 'Increase', '2023-03-10');
-- You can add more sample data as needed
