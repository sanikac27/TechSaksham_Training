# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 10:14:20 2025

@author: sanik
"""
import myModule
from mth_pkg.operations import multiply, divide

print(myModule.greet("Shravani"))

a = int(input('Enter number 1:'))
b = int(input('Enter number 2:'))
print(myModule.add(a,b))

print(multiply(a,b))
print(divide(a,b))