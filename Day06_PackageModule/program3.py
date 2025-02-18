# -*- coding: utf-8 -*-
"""
Created on Tue Feb 18 09:59:27 2025

@author: sanik
"""

def calculate_pizza_price(size, add_pepperoni, extra_cheese):
    prices = {"S": 15, "M": 20, "L": 25}
    pepperoni_prices = {"S": 2, "M": 3, "L": 3}
    cheese_price = 1
    
    if size not in prices:
        return "Invalid pizza size. Please choose S, M, or L."
    
    total_price = prices[size]
    
    if add_pepperoni:
        total_price += pepperoni_prices[size]
    
    if extra_cheese:
        total_price += cheese_price
    
    return total_price

def main():
    print("Welcome to Python Pizza!")
    size = input("What size pizza do you want? S, M, or L: ").upper()
    add_pepperoni = input("Do you want pepperoni? Y or N: ").upper() == "Y"
    extra_cheese = input("Do you want extra cheese? Y or N: ").upper() == "Y"
    
    price = calculate_pizza_price(size, add_pepperoni, extra_cheese)
    
    if isinstance(price, str):
        print(price)
    else:
        print(f"Your final bill is: ${price}")

if __name__ == "__main__":
    main()