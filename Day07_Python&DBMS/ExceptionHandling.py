# -*- coding: utf-8 -*-

def read_file_contents(file_path):
    try:
        with open(file_path, "r") as file:
            return file.read()
    except FileNotFoundError:
        return "Error: File not found."
    except PermissionError:
        return "Error: Permission denied. You do not have access to read this file."
    except Exception as e:
        return f"Error: An unknown error occurred - {e}"

# Example usage
file_path = input("Enter the file path: ")
print(read_file_contents(file_path))
