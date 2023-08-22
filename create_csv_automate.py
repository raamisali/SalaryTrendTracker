import schedule
import time
import pandas as pd
import pyodbc
from datetime import datetime

# Database connection information
server = 'LAPTOP-06L3B4LD\\SQLEXPRESS'
database = 'COMPANY_DB'
connection_string = f'DRIVER=SQL Server;SERVER={server};DATABASE={database};Trusted_Connection=yes'

# Define your data extraction and CSV creation function
def extract_and_create_csv():
    try:
        # Connect to the database
        conn = pyodbc.connect(connection_string)

        # SQL query
        query = 'SELECT E.FirstName, E.LastName, E.Position, E.Salary, S.EffectiveDate FROM Employees E JOIN Salaries S on E.EmployeeID = S.SalaryID'

        # Get current timestamp
        current_timestamp = datetime.now().strftime('%Y%m%d%H%M%S')

        # Construct file name with timestamp
        file_name = f'employees_{current_timestamp}.csv'

        # Read data from SQL and export to CSV
        df = pd.read_sql(query, conn)
        df.to_csv(file_name, index=False)
        print(f'Data exported to {file_name} successfully!')

    except Exception as e:
        print('An error occurred:', e)
    finally:
        conn.close()

# Schedule the function to run every 2 minutes
schedule.every(2).minutes.do(extract_and_create_csv)

# Run the scheduled tasks
while True:
    schedule.run_pending()
    time.sleep(1)
