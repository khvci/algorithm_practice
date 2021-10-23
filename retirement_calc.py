name = input("What is your name?\n")
birth = int(input("What is your year of birth?\n"))
year = 2021
age = year - birth
retirement = int(input("What is retirement age in your country?\n"))
years_to_work = retirement - age
ret_year = year + years_to_work
print(f"{name}, you are {age} years old. That means you need to work {years_to_work} more years to retire, considering that the retirement age is {retirement}. So, you will be retired in {ret_year}.")
