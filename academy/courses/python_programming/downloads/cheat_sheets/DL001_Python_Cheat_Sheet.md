# Python Cheat Sheet

> **FAEP Academy | Python Programming Foundations**

---

# Overview

This cheat sheet provides a quick reference to the Python programming concepts introduced in **Notebook 001 – Python & Jupyter Foundations**.

It is intended to support learners while completing notebooks, exercises, and projects.

---

# Comments

```python
# Single-line comment
```

---

# Variables

```python
name = "Alice"
age = 25
height = 1.72
is_student = True
```

---

# Basic Data Types

| Type | Example |
|------|---------|
| Integer | `10` |
| Float | `3.14` |
| String | `"Hello"` |
| Boolean | `True` / `False` |
| List | `[1,2,3]` |
| Dictionary | `{"name":"Alice"}` |
| Tuple | `(1,2,3)` |
| Set | `{1,2,3}` |

---

# Printing

```python
print("Hello World")
print(name)
```

---

# User Input

```python
name = input("Enter your name: ")
```

---

# Arithmetic Operators

| Operator | Description |
|----------|-------------|
| + | Addition |
| - | Subtraction |
| * | Multiplication |
| / | Division |
| // | Floor Division |
| % | Modulus |
| ** | Power |

---

# Comparison Operators

```text
==
!=
<
>
<=
>=
```

---

# Logical Operators

```text
and
or
not
```

---

# If Statement

```python
age = 18

if age >= 18:
    print("Adult")
else:
    print("Minor")
```

---

# For Loop

```python
for i in range(5):
    print(i)
```

---

# While Loop

```python
count = 1

while count <= 5:
    print(count)
    count += 1
```

---

# Functions

```python
def greet(name):
    print("Hello", name)

greet("Alice")
```

---

# Return Values

```python
def square(x):
    return x * x
```

---

# Lists

```python
numbers = [10,20,30]

numbers.append(40)

print(numbers)
```

---

# NumPy

```python
import numpy as np

numbers = np.array([1,2,3,4])

numbers.mean()
numbers.max()
numbers.min()
```

---

# Pandas

```python
import pandas as pd

df = pd.read_csv("DATA001_Sample_Numbers.csv")

print(df.head())
```

---

# Matplotlib

```python
import matplotlib.pyplot as plt

plt.plot([1,2,3],[4,5,6])
plt.show()
```

---

# Helpful Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Shift + Enter | Run current cell |
| Ctrl + Enter | Run cell without moving |
| A | Insert cell above (Command Mode) |
| B | Insert cell below (Command Mode) |
| DD | Delete selected cell |
| Z | Undo cell deletion |

---

# Good Programming Practices

- Use meaningful variable names.
- Write small reusable functions.
- Add comments where appropriate.
- Test code frequently.
- Read error messages carefully.
- Experiment and learn.

---

# Related Resources

- Notebook 001 – Python & Jupyter Foundations
- Programming Exercises
- Solution Notebook
- Python Official Documentation

---

## FAEP Academy

Building practical programming skills through concise reference material that supports interactive learning, experimentation, and engineering best practices.