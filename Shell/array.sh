#! /bin/bash
# To declare static Array
arr=(right now I am learning shell scripting.)

# To print all elements of array
echo ${arr[@]}	 # right now I am learning shell scripting.
echo ${arr[*]}	 # right now I am learning shell scripting.
echo ${arr[@]:0} # right now I am learning shell scripting.
echo ${arr[*]:0} # right now I am learning shell scripting.

# To print first element
echo ${arr[0]}	 # right
echo ${arr}		 # right

# To print particular element
echo ${arr[3]}	 # am
echo ${arr[I]}	 # right

# To print elements from a particular index
echo ${arr[@]:0} # right now I am learning shell scripting.
echo ${arr[@]:I} # right now I am learning shell scripting.
echo ${arr[@]:2} # I am learning shell scripting.
echo ${arr[0]:I} # right

# To print elements in range
echo ${arr[@]:I:4} # right now I am
echo ${arr[@]:2:3} # I am learning
echo ${arr[0]:I:3} # rig

# Length of Particular element
echo ${#arr[0]}	 # 5
echo ${#arr}	 # 5

# Size of an Array
echo ${#arr[@]}	 # 7
echo ${#arr[*]}	 # 7

# Search in Array
echo ${arr[@]/*[aA]*/} # right now I shell scripting.

# Replacing Substring Temporary
echo ${arr[@]//a/A}	 # right now I Am leArning shell scripting.
echo ${arr[@]}		 # right now I am learning shell scripting.
echo ${arr[0]//r/R}	 # Right
