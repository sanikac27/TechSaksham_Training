# Day 2 - Changing Permissions & Shell Programming

## 📅 Date: Wed 12/02/2025

## 🔹 Changing Permissions for Different Users in Linux

### **Types of Users in Linux:**
1. **User** – The owner of the file.
2. **Group** – Other users in the same group as the owner.
3. **Others** – All other users on the system.

### **File Permissions in Linux:**
Each file and directory in Linux has three types of access permissions:
- **Read (r)** = `4`
- **Write (w)** = `2`
- **Execute (x)** = `1`

### **Changing File Permissions (chmod Command)**
The `chmod` command is used to modify permissions for different users.

#### **Syntax:**
```bash
chmod ugo file_name
```

#### **Example:**
```bash
chmod 755 file.txt  # Sets permissions to rwxr-xr-x
```
Explanation:
- **7 (rwx)** – Owner has read, write, and execute permissions.
- **5 (r-x)** – Group has read and execute permissions.
- **5 (r-x)** – Others have read and execute permissions.

### **Changing File Owner (chown Command)**
The `chown` command is used to change the ownership of a file or directory.

#### **Syntax:**
```bash
chown new_owner file_name
```

#### **Example:**
```bash
chown sanika file.txt  # Changes owner to 'sanika'
```

---

## 🔹 Working with Files in Linux

### **Basic File Operations**
| Command | Description |
|---------|-------------|
| `mkdir folder_name` | Create a new directory |
| `rmdir folder_name` | Remove an empty directory |
| `cp file1 file2` | Copy a file |
| `mv file1 file2` | Move or rename a file |
| `touch file.txt` | Create an empty file |

---

## 🔹 Shell Programming in Linux

### **Introduction to Shell Scripting**
Shell scripting is used to automate tasks in Linux. There are different types of shells:
- **Bourne shell (sh)**
- **C shell (csh)**
- **Korn shell (ksh)**
- **Bash (Bourne Again Shell)**
- **Tcsh**

### **Checking Default Shell**
```bash
$ cat /etc/shells
```

### **Basic Shell Scripting Concepts**

#### **Comments in Shell Scripts**
```bash
# This is a comment in a shell script
```

#### **Conditional Statements (if, elif, else)**
```bash
if [ condition ]; then
    echo "Condition is true"
elif [ another_condition ]; then
    echo "Another condition is true"
else
    echo "Condition is false"
fi
```

#### **For Loop in Shell**
```bash
for i in {1..5}; do
    echo "Iteration: $i"
done
```

#### **While Loop in Shell**
```bash
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

---

## 🔹 SSH (Secure Shell) & SCP (Secure Copy Protocol)
### **Secure Shell (SSH)**
SSH is used to securely access remote systems.

#### **Example:**
```bash
ssh user@remote_host
```

### **Secure Copy Protocol (SCP)**
SCP is used to securely transfer files between systems.

#### **Example:**
```bash
scp file.txt user@remote_host:/path/to/destination
```

---

📌 **For more details, check out the shell script files in the repository.**
🔗 [GitHub Repository](https://github.com/sanikac27/TechSaksham_Training/tree/main/Day02_ShellProgramming)

