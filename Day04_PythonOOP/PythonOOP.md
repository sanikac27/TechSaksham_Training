# Day 4 - Functions, While-Else Loop & OOP Concepts

📅 **Date:** Fri 14/02/2025

## 🔹 Functions in Python
Functions are reusable blocks of code that perform a specific task. They help in modularizing the program and improving code reusability.

### **Defining and Calling a Function**
```python
def greet(name):
    """This function prints a greeting message."""
    print(f"Hello, {name}! Welcome to Python.")

# Function call
greet("Sanika")
```

### **Return Statement in Functions**
```python
def add(a, b):
    return a + b

result = add(5, 3)
print("Sum:", result)
```

---

## 🔹 While-Else Loop in Python
The `while-else` loop executes the `else` block only if the loop condition becomes false naturally (not through a `break` statement).

### **Example:**
```python
counter = 1
while counter <= 3:
    print("Counter:", counter)
    counter += 1
else:
    print("Loop ended naturally.")
```

### **Using `break` in While-Else**
```python
num = 1
while num <= 5:
    if num == 3:
        print("Breaking the loop at", num)
        break
    print(num)
    num += 1
else:
    print("This won't execute because the loop was broken.")
```

---

## 🔹 Object-Oriented Programming (OOP) Concepts
Python supports OOP principles like **Class, Object, Method, Inheritance, Polymorphism, Data Abstraction, and Encapsulation**.

### **1️⃣ Class and Object**
A **class** is a blueprint for creating objects. An **object** is an instance of a class.

#### **Example:**
```python
class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def display(self):
        print(f"Car: {self.brand} {self.model}")

# Creating an object
my_car = Car("Toyota", "Camry")
my_car.display()
```

### **2️⃣ Method**
Methods are functions defined inside a class that operate on its attributes.

#### **Example:**
```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def greet(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

# Creating an object
student1 = Student("Sanika", 20)
student1.greet()
```

### **3️⃣ Inheritance**
Inheritance allows a class to inherit attributes and methods from another class.

#### **Example:**
```python
class Animal:
    def speak(self):
        print("This animal makes a sound.")

class Dog(Animal):
    def speak(self):
        print("Bark! Bark!")

# Creating an object
dog = Dog()
dog.speak()
```

### **4️⃣ Polymorphism**
Polymorphism allows different classes to define the same method in their own way.

#### **Example:**
```python
class Bird:
    def fly(self):
        print("Birds can fly.")

class Penguin(Bird):
    def fly(self):
        print("Penguins cannot fly.")

# Creating objects
sparrow = Bird()
penguin = Penguin()
sparrow.fly()
penguin.fly()
```

### **5️⃣ Data Abstraction**
Data abstraction hides the implementation details and only shows the necessary parts.

#### **Example:**
```python
from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def start_engine(self):
        pass

class Car(Vehicle):
    def start_engine(self):
        print("Car engine started.")

# Creating object
my_car = Car()
my_car.start_engine()
```

### **6️⃣ Encapsulation**
Encapsulation restricts direct access to data and protects it from accidental modification.

#### **Example:**
```python
class BankAccount:
    def __init__(self, balance):
        self.__balance = balance  # Private attribute

    def deposit(self, amount):
        self.__balance += amount
        print("Deposited:", amount)

    def get_balance(self):
        return self.__balance

# Creating an object
account = BankAccount(1000)
account.deposit(500)
print("Balance:", account.get_balance())
```

---

📌 **For more details, check out the Jupyter Notebook in the repository.**
🔗 [GitHub Repository](https://github.com/sanikac27/TechSaksham_Training/tree/main/Day04_PythonOOP)

