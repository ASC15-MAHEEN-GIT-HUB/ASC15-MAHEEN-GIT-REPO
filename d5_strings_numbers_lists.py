#---Strings----
s="Hello World"
print("original string:",s)
print("string in uppercase:",s.upper())
print("string in lowercase:",s.lower())
#replace
print("string after replacing 'World' with 'Python':",s.replace("World","Python"))
#split
print("string split into words:",s.split())

#---numbers---
a=10
b=3
print("a:",a)
print("b:",b)   
#additon
print("a + b:",a+b)
#subtraction    
print("a - b:",a-b)
#multiplication
print("a * b:",a*b)
#division
print("a / b:",a/b)
#floor division
print("a // b:",a//b)
#modulus
print("a % b:",a%b)
#exponentiation
print("a ** b:",a**b)

#---lists---
lst=[1,2,3,4,5]
print("original list:",lst)
#append
lst.append(6)
print("list after appending 6:",lst)
#remove
lst.remove(3)
print("list after removing 3:",lst)
#insert
lst.insert(2,10)
print("list after inserting 10 at index 2:",lst)
#pop
popped_element=lst.pop()
print("popped element:",popped_element)
print("list after popping element:",lst)
#sort
lst.sort()
print("sorted list:",lst)
#reverse
lst.reverse()
print("reversed list:",lst)
#length
print("length of list:",len(lst))
#slicing
print("sliced list (elements from index 1 to 3):",lst[1:4])
#sum
print("sum of list elements:",sum(lst))

#---Deep Dive :lists---
squared_squares = [x**2 for x in range(1, 11)]
print("List of squares from 1 to 10:", squared_squares)
even_squares = [x**2 for x in range(1, 11) if x % 2 == 0]
print("List of squares of even numbers from 1 to 10:", even_squares)
nested_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flattened_list = [num for sublist in nested_list for num in sublist]
print("Flattened list from nested list:", flattened_list) 
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
transposed_matrix = [[row[i] for row in matrix] for i in range(len(matrix[0]))]
print("Transposed matrix:", transposed_matrix)
#filtering
filtered_list = [x for x in range(1, 21) if x % 3 == 0]
print("List of numbers from 1 to 20 that are multiples of 3:", filtered_list)
#combining elements from two lists
list1 = [1, 2, 3]
list2 = ['a', 'b', 'c']
combined_list = [(x, y) for x in list1 for y in list2]
print("Combined list of tuples from two lists:", combined_list)
#using functions in list comprehensions
def square(x):
    return x**2
squared_list = [square(x) for x in range(1, 11)]
print("List of squares using a function:", squared_list)
