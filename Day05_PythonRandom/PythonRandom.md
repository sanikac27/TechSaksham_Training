# Day 5 - Python Random Module

📅 **Date:** 15/02/2025

## 🔹 Introduction to the `random` Module
The `random` module in Python is used to generate pseudo-random numbers for various applications such as simulations, gaming, and cryptography. It provides functions to generate random integers, floating-point numbers, and random selections from sequences.

---

## 🔹 Key Features of the `random` Module

1️⃣ **Generating Random Numbers:** The `random` module allows you to generate random integers, floating-point numbers, and values within a specific range.

2️⃣ **Random Selection from Sequences:** You can randomly select an item from lists, tuples, or strings using functions like `choice()` and `sample()`.

3️⃣ **Shuffling Data:** The module provides a `shuffle()` function to rearrange elements in a list randomly.

4️⃣ **Seeding Randomness:** Using the `seed()` function, you can generate reproducible sequences of random numbers, useful for debugging or testing.

---

## 🔹 Commonly Used Functions

### **1️⃣ Generating Random Integers**
- `randint(a, b)`: Returns a random integer between `a` and `b` (inclusive).

#### **Example:**
```python
import random
print(random.randint(1, 10))  # Random integer between 1 and 10
```

### **2️⃣ Generating Random Floats**
- `random()`: Returns a random float between `0.0` and `1.0`.
- `uniform(a, b)`: Returns a random float between `a` and `b`.

#### **Example:**
```python
print(random.random())  # Random float between 0 and 1
print(random.uniform(1, 5))  # Random float between 1 and 5
```

### **3️⃣ Selecting Random Elements**
- `choice(seq)`: Returns a randomly selected element from the given sequence.
- `sample(seq, k)`: Returns `k` unique elements chosen randomly from the sequence.

#### **Example:**
```python
colors = ["red", "blue", "green", "yellow"]
print(random.choice(colors))  # Randomly selects one color
```

### **4️⃣ Shuffling Sequences**
- `shuffle(seq)`: Randomly reorders elements in a list.

#### **Example:**
```python
cards = ["Ace", "King", "Queen", "Jack"]
random.shuffle(cards)
print(cards)  # Prints shuffled list
```

### **5️⃣ Seeding for Reproducibility**
- `seed(n)`: Initializes the random number generator to produce the same results across multiple runs.

#### **Example:**
```python
random.seed(42)
print(random.randint(1, 100))  # Will always return the same number if seeded
```

---

📌 **For more details, check out the Jupyter Notebook in the repository.**
🔗 [GitHub Repository](https://github.com/sanikac27/TechSaksham_Training/tree/main/Day05_PythonRandom)

