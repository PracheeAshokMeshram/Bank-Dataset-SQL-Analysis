# 💼 MyBankDB – A Comprehensive Banking System SQL Project

## 📘 Project Overview

**MyBankDB** is a robust SQL-based project that simulates the backend of a real-world banking system. It captures critical aspects such as customer profiles, account management, transaction history, loans, credit card operations, branch data, and ATM statuses.

This project demonstrates a wide range of SQL functionalities — from basic `SELECT` statements to advanced aggregation, joins, subqueries, string functions, and date operations — all built around realistic banking use cases.

---

## 🧱 Database Schema

The database includes the following main entities:

- **Customer** – Contains personal details like name, age, and customer ID.
- **Accounts** – Tracks account details, types, statuses, and balances.
- **Transactions** – Stores all financial transactions linked to accounts.
- **Loans** – Holds data about loan amounts, interest rates, end dates, and statuses.
- **CreditCards** – Includes credit limits, balances, and usage per customer.
- **Branches** – Lists physical locations of bank branches.
- **ATMs** – Records ATM locations and operational status.

---

## 🔍 Key SQL Features Demonstrated

This project includes SQL queries and operations covering:

### ✅ Basic Queries
- Viewing data from all tables (`SELECT *`)
- Filtering based on conditions (e.g. active accounts, high interest loans)

### 📊 Aggregate Functions
- Counting total customers and accounts
- Summing loan amounts and credit card limits
- Calculating average age of customers

### 🔗 Joins
- Merging data from Customers, Accounts, and Transactions
- Linking loans and credit cards to customer records

### 🔁 Subqueries
- Finding the 2nd and 5th highest loan amounts
- Identifying customers with multiple accounts

### 📆 Date Operations
- Calculating days left until loan end date
- Filtering transactions by specific months and years
- Fetching latest transaction dates

### 🧠 Conditional Logic
- Categorizing customers into age groups
- Displaying only odd-numbered customer IDs

### 🛠️ Data Management
- Cloning tables (structure + data)
- Deleting inactive records
- Creating backup tables

### 🔤 String Functions
- Extracting first names and last names
- Substring operations on customer names

---

## 💡 Example Use Cases

- Identify customers exceeding their credit limits
- Find top 10 loan holders by amount
- Detect inactive accounts and ATMs
- Segment customers by age group for marketing
- Monitor monthly transaction volumes
- Track due dates for active loans

---

## 🛠️ Technologies Used

- **MySQL** – Core relational database engine
- **SQL** – Structured Query Language for all operations
- **Any SQL Client** – e.g., MySQL Workbench, DBeaver, phpMyAdmin
- **Git + GitHub** – For version control and project sharing

---

## 🚀 How to Use

1. Clone or download the repository.
2. Open the SQL script file in your SQL client.
3. Execute queries step-by-step to create the database, insert sample data (if provided), and explore various use cases.
4. Modify or extend queries for your own analysis or learning.

---

## ⚠️ Disclaimer

- This project uses **dummy/sample data** for educational purposes only.
- There is **no real customer or financial data** involved.
- Designed strictly for **learning, practice, and showcasing SQL skills**.

---

## 👤 Author

**Prachee Meshram**

---

## 📬 Feedback & Contributions

Have suggestions or improvements?

- ⭐ Star the repo if you found it useful
- 🍴 Fork to extend the project
- 🐞 Open issues for bugs or enhancements

---

