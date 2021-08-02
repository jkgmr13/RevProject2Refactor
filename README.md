# ExpenseReimbursement

The project allows employees to create and view reimbursement requests. The managers can approve or deny requests, and view some basic stats about requests.

## Technologies Used
  - Python
  - Selenium
  - SQL

## Features
- Employees and managers can login
- Employees can make and view requests
- Managers can approve or deny requests
- Managers can view basic stats



## Getting Started
-Server 
 - The server can be run through ExpenseReimbursementBackend/main.py.
-Client
  - The client can be hosted on an s3 bucket or on a live session using VS code. Whichever is used in ExpenseReimbursementFrontend/js/frontEndFunctionality.js you need to update the path variable to the location of the server running the backend and the filePath to the location of the service hosting the front end files.
- Database
  - The database script can be found in the main repo under database. Using a postgres database you can run the script to populate the database with the correct tables and some default data. In ExpenseReimbursementBackend/util the postgres_con.py file will need update with the correct authentication for the database, or have the path variables contain the authentication information.

## Usage
- Clients can view the status of existing requests.
- Clients can make new requests for reimbursements.
- Managers can see all clients reimbursement requests.
- Managers can approve or deny client requests.
- Managers can see how much money has been rejected for each client.
- Managers can see how much money has been divested to each employee.


## To-do
- More specific stats for managers to view
- Creation of Employee accounts
- Account Recovery
