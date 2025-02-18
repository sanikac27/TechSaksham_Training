# -*- coding: utf-8 -*-
"""
Created on Tue Feb 18 09:56:12 2025

@author: sanik
"""

def calculate_bmi(weight, height):
    bmi = weight / (height ** 2)
    return bmi

def interpret_bmi(bmi):
    if bmi < 18.5:
        return "You are underweight."
    elif 18.5 <= bmi < 25:
        return "You have a normal weight."
    elif 25 <= bmi < 30:
        return "You are slightly overweight."
    elif 30 <= bmi < 35:
        return "You are obese."
    else:
        return "You are clinically obese."

def main():
    try:
        weight = float(input("Enter your weight in kg: "))
        height = float(input("Enter your height in meters: "))
        if weight <= 0 or height <= 0:
            print("Weight and height must be positive values.")
            return
        
        bmi = calculate_bmi(weight, height)
        print(f"Your BMI is: {bmi:.2f}")
        print(interpret_bmi(bmi))
    except ValueError:
        print("Please enter valid numerical values for weight and height.")

if __name__ == "__main__":
    main()