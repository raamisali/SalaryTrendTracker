-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200),
    DepartmentID INT,
    Position VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    SupervisorID INT
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    DepartmentHeadID INT
);

-- Create Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Description VARCHAR(200)
);

-- Create EmployeeProjects table
CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create Salaries table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    SalaryAmount DECIMAL(10, 2),
    EffectiveDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create Attendance table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    CheckInTime TIME,
    CheckOutTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create LeaveRequests table
CREATE TABLE LeaveRequests (
    LeaveRequestID INT PRIMARY KEY,
    EmployeeID INT,
    LeaveType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(20),
    Comments VARCHAR(200),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create Tasks table
CREATE TABLE Tasks (
    TaskID INT PRIMARY KEY,
    ProjectID INT,
    TaskDescription VARCHAR(200),
    AssigneeID INT,
    DueDate DATE,
    Priority VARCHAR(20),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (AssigneeID) REFERENCES Employees(EmployeeID)
);
