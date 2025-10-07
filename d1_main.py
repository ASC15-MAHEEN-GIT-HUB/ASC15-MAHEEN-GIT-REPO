store_name="ShopEase"
welcome_message=f"Welcome to {store_name}! - Your one-stop shop for everything!"
print(welcome_message)

item_count=150
item_price=29.99
is_available=True
item_description="A versatile gadget that simplifies your daily tasks."
item_tags=["electronics", "gadgets", "home"]
item_details={"brand": "TechCorp", "warranty": "2 years", "color": "black"}
item_id=None
print(f"Item Count: {item_count}")
print(f"Item Price: ${item_price}")
print(f"Is Available: {is_available}")
print(f"Item Description: {item_description}")
print(f"Item Tags: {item_tags}")
print(f"Item Details: {item_details}")
print(f"Item ID: {item_id}")

#demonstrating type conversion
total_cost=item_count*item_price
total_cost_str=str(total_cost)
print(f"Total Cost: ${total_cost_str}")     

#converting string to integer
item_count_str="150"
item_count_int=int(item_count_str)      
print(f"Item Count (int): {item_count_int}")
#converting int to float
item_count_float=float(item_count_int)
print(f"Item Count (float): {item_count_float}")
#The list of conversion functions in Python includes:
#int(): Converts a value to an integer.
#float(): Converts a value to a floating-point number.
#str(): Converts a value to a string.
#list(): Converts a value to a list.
#tuple(): Converts a value to a tuple.
#set(): Converts a value to a set.
#dict(): Converts a value to a dictionary.
#bool(): Converts a value to a boolean.
#complex(): Converts a value to a complex number.
#ord(): Converts a character to its Unicode integer value.
#chr(): Converts a Unicode integer value to its corresponding character.
