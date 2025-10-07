import sys
#sys.argv is a list in Python,which contains the command-line arguments passed to the script.
#The first element,sys.argv[0],is the name of the script.(d2_arguments.py)

print("Script name:", sys.argv[0])
print("sixth argument:",sys.argv[6])

#print elements from 1 to end
for arg in sys.argv[1:]:
    print("Argument",arg)

if len(sys.argv) >1:
    print("Arguments passed:", sys.argv[1:])
else:
    print("No arguments passed.")

#to run this script,use the command:
#python d2_arguments.py arg1 arg2 arg3
