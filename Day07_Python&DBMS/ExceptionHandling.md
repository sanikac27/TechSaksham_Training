# Exception Handling in Python

Exception handling is an essential part of Python programming, allowing developers to handle runtime errors gracefully and prevent program crashes.

## What is an Exception?
An exception is an event that occurs during the execution of a program that disrupts its normal flow. When an error occurs, Python generates an exception object, which can be handled using exception handling techniques.

## Why Exception Handling?
- Prevents abrupt program termination
- Helps in debugging and logging errors
- Allows the program to continue executing after handling the exception
- Provides a structured way to handle runtime errors

## Types of Exceptions in Python
Python has several built-in exceptions, including:

### 1. **SyntaxError**
Occurs when the syntax of the code is incorrect.
```python
print("Hello"  # Missing closing parenthesis
```
**Output:**
```
SyntaxError: unexpected EOF while parsing
```

### 2. **TypeError**
Occurs when an operation is performed on an incompatible data type.
```python
x = 5 + "hello"
```
**Output:**
```
TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

### 3. **NameError**
Occurs when a variable is used before being defined.
```python
print(my_variable)
```
**Output:**
```
NameError: name 'my_variable' is not defined
```

### 4. **IndexError**
Occurs when an attempt is made to access an index that does not exist in a list.
```python
my_list = [1, 2, 3]
print(my_list[5])
```
**Output:**
```
IndexError: list index out of range
```

### 5. **KeyError**
Occurs when trying to access a non-existent key in a dictionary.
```python
d = {"name": "John"}
print(d["age"])
```
**Output:**
```
KeyError: 'age'
```

### 6. **ValueError**
Occurs when a function receives an argument of the correct type but inappropriate value.
```python
num = int("hello")
```
**Output:**
```
ValueError: invalid literal for int() with base 10: 'hello'
```

### 7. **ZeroDivisionError**
Occurs when a number is divided by zero.
```python
print(10 / 0)
```
**Output:**
```
ZeroDivisionError: division by zero
```

### 8. **FileNotFoundError**
Occurs when trying to open a file that does not exist.
```python
file = open("non_existent_file.txt", "r")
```
**Output:**
```
FileNotFoundError: [Errno 2] No such file or directory: 'non_existent_file.txt'
```

## Exception Handling in Python
Python provides a structured way to handle exceptions using the `try-except` block.

### Syntax
```python
try:
    # Code that may raise an exception
    pass
except ExceptionType:
    # Handle the exception
    pass
```

### Example
```python
try:
    num = int(input("Enter a number: "))
    print(10 / num)
except ZeroDivisionError:
    print("Error: Cannot divide by zero!")
except ValueError:
    print("Error: Invalid input! Please enter a number.")
except Exception as e:
    print(f"Unexpected error: {e}")
```

## `finally` Clause
The `finally` block is always executed, regardless of whether an exception occurs or not.
```python
try:
    file = open("test.txt", "r")
except FileNotFoundError:
    print("File not found!")
finally:
    print("Execution completed.")
```

## `else` Clause
The `else` block executes only if no exceptions are raised in the `try` block.
```python
try:
    num = int(input("Enter a number: "))
    result = 10 / num
except ZeroDivisionError:
    print("Cannot divide by zero!")
else:
    print(f"Result: {result}")
```

## Raising Exceptions
Exceptions can be raised manually using the `raise` keyword.
```python
age = int(input("Enter your age: "))
if age < 18:
    raise ValueError("Age must be at least 18.")
```

## Summary
- Exceptions occur due to runtime errors.
- Python provides built-in exceptions like `TypeError`, `ValueError`, `IndexError`, etc.
- Exception handling is done using `try-except` blocks.
- `finally` ensures code execution regardless of an exception.
- `raise` allows raising custom exceptions.

By properly handling exceptions, we can make our Python programs more robust and error-resistant.
