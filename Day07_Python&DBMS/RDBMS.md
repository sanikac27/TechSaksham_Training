# 📌 Introduction to Relational Databases (RDBMS)  

A **Relational Database Management System (RDBMS)** is a type of database that organizes data into structured tables with rows and columns. It uses relationships between tables to efficiently store, retrieve, and manage data.  

### ✨ Why Use Relational Databases?  
- **Structured Storage**: Data is stored in tables, making retrieval efficient.  
- **Data Integrity**: Maintains accuracy and consistency with constraints.  
- **Reduces Redundancy**: Uses normalization to avoid duplicate data.  
- **Supports ACID Properties**: Ensures reliable transactions.  
- **Query Optimization**: Uses SQL for fast and effective querying.  

---

## 🔍 Terminology in RDBMS  

Understanding the basic terms in RDBMS is crucial for database management.  

| Term | Description |
|------|------------|
| **Table** | A collection of related data stored in rows and columns. |
| **Row (Tuple)** | A single record in a table. |
| **Column (Attribute)** | A field in a table that holds data of a specific type. |
| **Primary Key** | A unique identifier for each row in a table. |
| **Foreign Key** | A key that links two tables, establishing a relationship. |
| **Candidate Key** | A column that could be a primary key. |
| **Composite Key** | A key formed by combining multiple columns. |
| **Schema** | The structure of a database, including tables, columns, and relationships. |
| **Normalization** | The process of organizing data to reduce redundancy. |
| **Index** | A performance optimization feature that speeds up data retrieval. |

---

## 🔑 Types of RDBMS Keys  

Keys in RDBMS are crucial for **data integrity and relationships**.  

| Key Type | Description |
|----------|------------|
| **Primary Key** | A unique identifier for a record (e.g., `student_id`). |
| **Foreign Key** | Establishes a relationship between two tables (e.g., `course_id` in `Students`). |
| **Candidate Key** | Any key that can be a primary key. |
| **Composite Key** | A primary key made up of multiple columns. |
| **Super Key** | A set of attributes that uniquely identify a record. |
| **Alternate Key** | A candidate key that is not selected as the primary key. |
| **Surrogate Key** | A system-generated unique key (e.g., Auto-increment ID). |

### ✅ What is the Use of Database Keys?  
- **Ensures Uniqueness**: Prevents duplicate records.  
- **Defines Relationships**: Establishes connections between tables.  
- **Enhances Data Integrity**: Prevents invalid entries.  
- **Optimizes Query Performance**: Speeds up data retrieval.  

---

## 📌 Database Schema and Schema Design  

### 🛠️ What is a Database Schema?  
A **schema** is the logical structure of a database that defines how data is stored, related, and accessed. It includes:  
- **Tables**: Defines entities in the database.  
- **Columns & Data Types**: Specifies attributes and their types.  
- **Constraints**: Rules like `NOT NULL`, `UNIQUE`, `CHECK`, etc.  
- **Relationships**: Defines links between tables using keys.  

### 📊 Example of a Simple Database Schema  

```sql
CREATE DATABASE UniversityDB;

USE UniversityDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    department VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
```

### 🔍 Best Practices for Schema Design  
✅ Normalize your tables to reduce redundancy.  
✅ Use **appropriate data types** to optimize performance.  
✅ Define **primary and foreign keys** to maintain relationships.  
✅ Implement **constraints** for data integrity.  
✅ Index frequently queried columns for faster access.  

---

## 🔄 DBMS vs RDBMS  

| Feature | DBMS | RDBMS |
|---------|------|-------|
| **Storage** | Stores data as files | Stores data in structured tables |
| **Relationships** | No relationships between data | Uses relationships between tables |
| **Normalization** | Not supported | Supports normalization to avoid redundancy |
| **ACID Compliance** | Not always guaranteed | Ensures ACID properties for reliable transactions |
| **Data Access** | Slower due to unstructured storage | Faster with indexing and optimized queries |
| **Examples** | XML, JSON-based storage, File Systems | MySQL, PostgreSQL, Oracle, SQL Server |

---

## 🚀 Summary  

- **RDBMS** organizes data into tables with relationships.  
- **Database keys** ensure data integrity and uniqueness.  
- **Schema design** defines the logical structure of a database.  
- **DBMS vs RDBMS**: RDBMS is structured, scalable, and supports relationships.  
