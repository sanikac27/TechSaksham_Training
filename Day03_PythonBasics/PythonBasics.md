# Day 3 - Python Introduction & Data Structures

📅 **Date:** Thu 13/2/2025

## 🔹 Introduction to Python
Python is a high-level, interpreted programming language known for its simplicity and readability. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. Python is widely used in web development, data analysis, artificial intelligence, automation, and more.

### **Why Learn Python?**
- Beginner-friendly with easy-to-read syntax.
- Extensive libraries and frameworks for various applications.
- Supports cross-platform development.
- Used in data science, web development, automation, and AI.

### **Writing Your First Python Program**
To print "Hello, World!" in Python:
```python
print("Hello, World!")
```

---

## 🔹 Python Data Structures
Python provides built-in data structures such as **Lists, Tuples, and Dictionaries**, which are used to store and manipulate collections of data.

### **1️⃣ Lists** (Mutable Ordered Collection)
Lists store multiple items in a single variable and allow modifications.

#### **Example:**
```python
# Creating a list
fruits = ["apple", "banana", "cherry"]
print(fruits)

# Adding an item
fruits.append("orange")
print(fruits)

# Removing an item
fruits.remove("banana")
print(fruits)
```

### **2️⃣ Tuples** (Immutable Ordered Collection)
Tuples are similar to lists but cannot be modified after creation.

#### **Example:**
```python
# Creating a tuple
coordinates = (10.5, 20.3)
print(coordinates)

# Accessing elements
print(coordinates[0])
```

### **3️⃣ Dictionaries** (Key-Value Pairs)
Dictionaries store data in key-value pairs, allowing efficient lookups.

#### **Example:**
```python
# Creating a dictionary
student = {"name": "Sanika", "age": 20, "course": "Python"}
print(student["name"])

# Updating a value
student["age"] = 21
print(student)
```

---

## 🔹 Conditional Statements (if-elif-else)
Python uses conditional statements to execute different code blocks based on conditions.

#### **Example:**
```python
age = 18
if age >= 18:
    print("You are eligible to vote.")
elif age == 17:
    print("You will be eligible next year.")
else:
    print("You are not eligible to vote.")
```

---

## 🔹 Looping in Python
### **For Loop**
Used to iterate over sequences like lists, tuples, or strings.
```python
for num in range(1, 6):
    print(num)
```

### **While Loop**
Executes as long as a condition is true.
```python
count = 0
while count < 5:
    print("Count:", count)
    count += 1
```

---

📌 **For more details, check out the Jupyter Notebook in the repository.**
🔗 [GitHub Repository](https://github.com/sanikac27/TechSaksham_Training/tree/main/Day03_PythonBasics)

