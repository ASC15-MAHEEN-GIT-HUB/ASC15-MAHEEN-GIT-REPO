#dictionary
#product catalogue:each key is a product id each value is a dictionary with product details
#a simple dictionary to represent a product catalogue
product={
    "id":101,
    "name":"Smartphone",
    "price":699.99,
    "stock":50,
    "tags":["electronics","mobile","gadget"],
    "details":{"brand":"TechCorp","warranty":"2 years","color":"black"}
}
print("original product dictionary:",product)
#accessing elements
print("Product Name:",product["name"])
print("Product Price:",product["price"])
print("Product Brand:",product["details"]["brand"])
print("*********************************************************************")



catalogue={
    101:{"name":"Smartphone","price":699.99,"stock":50},
    102:{"name":"Laptop","price":999.99,"stock":30},
    103:{"name":"Headphones","price":199.99,"stock":100},
    104:{"name":"Smartwatch","price":299.99,"stock":75}
}
print("original catalogue dictionary:",catalogue)
#accessing elements 
print("Product 102 Name:",catalogue[102]["name"])
print("Product 103 Price:",catalogue[103]["price"])
print("Product 104 Stock:",catalogue[104]["stock"])

#updating elements
catalogue[101]["stock"]-=5 #sold 5 smartphones
print("Updated Stock for Product 101:",catalogue[101]["stock"])
catalogue[102]["price"]=949.99 #discount on laptop
print("Updated Price for Product 102:",catalogue[102]["price"])

#adding a new product
catalogue[105]={"name":"Tablet","price":399.99,"stock":40}
print("Added Product 105:",catalogue[105])

#looping through the catalogue
for product_id, details in catalogue.items():
    print(f"Product ID: {product_id}, Name: {details['name']}, Price: {details['price']}, Stock: {details['stock']}")       

#removing a product
del catalogue[103] #removed headphones
print("Catalogue after removing Product 103:",catalogue)
#checking if a product exists
if 104 in catalogue:
    print("Product 104 exists in the catalogue.")
else:
    print("Product 104 does not exist in the catalogue.")

