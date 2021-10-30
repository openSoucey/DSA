#Python Array 
import array as arr

#define the array variable
aValues = arr.array('i', [])

#taking user value to define array size
aSize = int(input("Enter size of array:"))

#taking and storing user inputs
for i in range(0, aSize):
    num = int(input("Enter %d array element:" % (i + 1)))
    aValues.append(num)

#Print the array
print("All array elements are:", end="")
for i in aValues:
    print(i, end=" ")


