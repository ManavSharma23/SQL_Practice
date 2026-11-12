# 🗄️ SQL Practice & Learning Repository

A structured collection of MySQL scripts covering fundamental to advanced SQL concepts, schema design, data manipulation, procedural programming, and optimization techniques.

---

## 📌 Overview

This repository serves as a comprehensive reference guide and hands-on practice playground for SQL (MySQL), featuring real-world inspired databases such as `employee_db` and a gaming dataset `Valorant`.

---

## 📂 Repository Structure & Topics

| File | Category | Description |
|---|---|---|
| [`Table_Creation.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Table_Creation.sql) | **Schema Setup** | Database initialization and primary schema creation (`departments`, `employees`, `orders`) with keys and constraints. |
| [`DDL.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/DDL.sql) | **Data Definition Language** | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`, and constraint management (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `UNIQUE`). |
| [`Data.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Data.sql) | **Mock Data** | Sample datasets and bulk `INSERT` statements for querying and testing. |
| [`DML.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/DML.sql) | **Data Manipulation Language** | `INSERT`, `UPDATE`, `DELETE`, and basic transaction management. |
| [`Base_queries.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Base_queries.sql) | **Basic Queries** | `SELECT`, `WHERE`, comparison and logical operators (`AND`, `OR`, `NOT`), `ORDER BY`, `DISTINCT`, and `LIMIT`. |
| [`Joins.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Joins.sql) | **Table Joins** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `CROSS JOIN`, and multi-table joining techniques. |
| [`Functions.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Functions.sql) | **Built-in & Custom Functions** | Aggregate (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), string, mathematical, and date functions. |
| [`Sub_Queries_Procedures.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Sub_Queries_Procedures.sql) | **Subqueries** | Nested queries, correlated subqueries, `IN`, `EXISTS`, and procedural logic. |
| [`Procedures.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Procedures.sql) | **Stored Procedures** | Reusable stored routines with `IN`, `OUT`, and `INOUT` parameters. |
| [`Triggers.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Triggers.sql) | **Triggers** | Automated actions executing `BEFORE` / `AFTER` on `INSERT`, `UPDATE`, or `DELETE`. |
| [`Views.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Views.sql) | **Database Views** | Virtual tables to simplify complex queries and restrict direct table access. |
| [`Notes.txt`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Notes.txt) | **Cheatsheet & Control Flow** | Quick notes on conditional logic (`IF / ELSE`), loops (`WHILE`), and procedural syntax. |

---

## 🚀 Getting Started

### Prerequisites
- [MySQL Server](https://dev.mysql.com/downloads/mysql/) (v8.0+ recommended)
- A MySQL client such as MySQL Workbench, DBeaver, DataGrip, or the MySQL CLI.

### Execution Order
To set up and run the practice scripts in your local database:

1. **Create the Database and Tables:**
   Run [`Table_Creation.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Table_Creation.sql) or [`DDL.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/DDL.sql) to set up schemas and constraints.
2. **Populate Data:**
   Run [`Data.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Data.sql) to insert practice records.
3. **Practice Queries & Advanced Logic:**
   Explore files in sequence:
   - [`Base_queries.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Base_queries.sql)
   - [`Joins.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Joins.sql)
   - [`Views.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Views.sql)
   - [`Procedures.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Procedures.sql)
   - [`Triggers.sql`](file:///Users/nehasharma/PycharmProjects/SQL-Practice/Triggers.sql)

---

## 🎯 Key Concepts Covered

- [x] Schema & Table Design (Constraints, Keys, Indexes)
- [x] CRUD Operations (Data Manipulation)
- [x] Filtering, Aggregations, & Grouping (`GROUP BY`, `HAVING`)
- [x] Relational Joins & Subqueries
- [x] Stored Procedures, Control Flow (`IF-ELSE`, `WHILE`), and Triggers
- [x] Virtual Tables (Views)

