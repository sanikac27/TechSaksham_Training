# -*- coding: utf-8 -*-

def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    return False

def main():
    try:
        year = int(input("Enter a year: "))
        if year < 0:
            print("Please enter a valid positive year.")
            return
        
        if is_leap_year(year):
            print(f"{year} is a leap year.")
        else:
            print(f"{year} is not a leap year.")
    except ValueError:
        print("Please enter a valid numerical year.")

if __name__ == "__main__":
    main()