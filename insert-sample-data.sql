-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, Gender, ContactNumber, Email, Address, DepartmentID, Position, HireDate, Salary, SupervisorID)
VALUES
    (1, 'Michael', 'Schmidt', '1985-03-15', 'Male', '123-456-7890', 'michael@example.com', '123 Main St', 1, 'Manager', '2010-05-20', 75000, NULL),
    (2, 'John', 'Sardar', '1992-11-28', 'Male', '987-654-3210', 'john@example.com', '456 Elm St', 2, 'Developer', '2015-02-10', 60000, 1),
    (3, 'Alan', 'Comey', '1988-06-12', 'Male', '555-123-4567', 'alan@example.com', '789 Oak St', 3, 'Analyst', '2018-09-05', 55000, 2),
    (4, 'Donald', 'Rigazzi', '1994-07-20', 'Male', '555-987-6543', 'donald@example.com', '321 Maple St', 1, 'Designer', '2019-04-12', 60000, 1),
    (5, 'Qaisar', 'Khan', '1989-09-03', 'Male', '555-789-1234', 'qaisar@example.com', '567 Pine St', 2, 'Developer', '2016-08-01', 65000, 1),
    (6, 'Khurram', 'Smith', '1991-12-08', 'Male', '555-456-7890', 'khurram@example.com', '789 Cedar St', 3, 'Manager', '2017-03-25', 80000, NULL),
    (7, 'Julie', 'Patel', '1996-02-18', 'Female', '555-234-5678', 'julie@example.com', '987 Birch St', 1, 'Analyst', '2021-01-10', 55000, 4),
    (8, 'Imran', 'Yusuf', '1990-04-30', 'Male', '555-876-5432', 'imran@example.com', '543 Elm St', 2, 'Developer', '2017-09-20', 62000, 2),
    (9, 'Molly', 'Jenkins', '1993-08-22', 'Female', '555-567-8901', 'molly@example.com', '123 Oak St', 3, 'Designer', '2019-07-05', 58000, 6),
    (10, 'Saranya', 'Evans', '1987-10-05', 'Female', '555-234-5678', 'saranya@example.com', '789 Pine St', 2, 'Analyst', '2015-06-15', 60000, 5);

-- Insert sample data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName, DepartmentHeadID)
VALUES
    (1, 'Human Resources', 6),
    (2, 'Engineering', 2),
    (3, 'Finance', 7),
    (4, 'Marketing', 1),
    (5, 'IT', 5);

-- Insert sample data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Description)
VALUES
    (1, 'Website Redesign', '2023-01-15', '2023-04-30', 'Redesigning company website for improved user experience.'),
    (2, 'Product Launch', '2023-03-10', '2023-06-30', 'Launching new product line into the market.'),
    (3, 'Expense Management System', '2023-02-01', '2023-05-15', 'Developing a system to manage expense reporting and approvals.'),
    (4, 'Social Media Campaign', '2023-04-20', '2023-07-15', 'Creating and running a targeted social media marketing campaign.'),
    (5, 'Database Optimization', '2023-03-01', '2023-06-15', 'Optimizing database performance for faster query processing.');

-- Insert sample data into Salaries table
INSERT INTO Salaries (SalaryID, EmployeeID, SalaryAmount, EffectiveDate)
VALUES
    (1, 1, 75000, '2023-01-01'),
    (2, 2, 60000, '2023-01-01'),
    (3, 3, 55000, '2023-01-01'),
    (4, 4, 60000, '2023-01-01'),
    (5, 5, 65000, '2023-01-01'),
    (6, 6, 80000, '2023-01-01'),
    (7, 7, 55000, '2023-01-01'),
    (8, 8, 62000, '2023-01-01'),
    (9, 9, 58000, '2023-01-01'),
    (10, 10, 60000, '2023-01-01');


-- Insert sample data into Attendance table
INSERT INTO Attendance (AttendanceID, EmployeeID, Date, CheckInTime, CheckOutTime)
VALUES
    (1, 1, '2023-08-01', '09:00:00', '17:00:00'),
    (2, 2, '2023-08-01', '08:30:00', '17:30:00'),
    (3, 3, '2023-08-01', '09:15:00', '17:15:00'),
    (4, 4, '2023-08-01', '09:30:00', '18:00:00'),
    (5, 5, '2023-08-01', '09:00:00', '18:00:00'),
    (6, 6, '2023-08-01', '08:45:00', '17:45:00'),
    (7, 7, '2023-08-01', '09:00:00', '17:00:00'),
    (8, 8, '2023-08-01', '08:30:00', '17:30:00'),
    (9, 9, '2023-08-01', '09:15:00', '17:15:00'),
    (10, 10, '2023-08-01', '09:30:00', '18:00:00');


	-- Insert sample data into LeaveRequests table
INSERT INTO LeaveRequests (LeaveRequestID, EmployeeID, LeaveType, StartDate, EndDate, Status, Comments)
VALUES
    (1, 1, 'Vacation', '2023-08-10', '2023-08-15', 'Approved', 'Planning a short trip.'),
    (2, 2, 'Sick Leave', '2023-08-08', '2023-08-09', 'Approved', 'Feeling unwell.'),
    (3, 3, 'Vacation', '2023-08-20', '2023-08-25', 'Pending', 'Considering a vacation.'),
    (4, 4, 'Sick Leave', '2023-08-12', '2023-08-13', 'Rejected', 'Recovering from illness.'),
    (5, 5, 'Vacation', '2023-08-05', '2023-08-07', 'Approved', 'Taking a break.');

-- Insert sample data into Tasks table
INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, AssigneeID, DueDate, Priority)
VALUES
    (1, 1, 'Design new layout', 2, '2023-02-28', 'High'),
    (2, 1, 'Implement UI changes', 8, '2023-03-15', 'Medium'),
    (3, 2, 'Prepare product launch plan', 3, '2023-04-05', 'High'),
    (4, 2, 'Create marketing materials', 7, '2023-05-10', 'High'),
    (5, 3, 'Develop expense approval workflow', 5, '2023-03-30', 'Medium'),
    (6, 3, 'Test expense management system', 9, '2023-04-15', 'Medium'),
    (7, 4, 'Create social media content', 4, '2023-05-05', 'High'),
    (8, 4, 'Run ad campaigns', 7, '2023-05-20', 'High'),
    (9, 5, 'Identify database performance issues', 6, '2023-04-10', 'High'),
    (10, 5, 'Optimize database queries', 10, '2023-05-01', 'Medium');

