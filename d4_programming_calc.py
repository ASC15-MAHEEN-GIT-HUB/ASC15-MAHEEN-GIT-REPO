#simple calculator: add,subtract,multiply,divide two numbers
#define a function simple_calculator
def simple_calculator(num1, num2, operation):
    if operation == 'add':
        return num1 + num2
    elif operation == 'subtract':
        return num1 - num2
    elif operation == 'multiply':
        return num1 * num2
    elif operation == 'divide':
        if num2 != 0:
            return num1 / num2
        else:
            return "Error: Division by zero"
    else:
        return "Error: Invalid operation"
try:
    number1 = float(input("Enter first number: "))
    number2 = float(input("Enter second number: "))
    op = input("Enter operation (add, subtract, multiply, divide): ").strip().lower()
    result = simple_calculator(number1, number2, op)
    print("Result:", result)
except ValueError:
    print("Error: Invalid input. Please enter numeric values for numbers.")
#example usage:
#result = simple_calculator(10, 5, 'add')