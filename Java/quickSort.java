import java.util.Arrays;

// import java.util.Scanner;

class quickSort 
{
    public static void main(String args[]) 
	{ 
        // Scanner scnOBJ = new Scanner(System.in);
        // System.out.println("");
        // int count;
		int arr[] = {2, 34, 27, 59, 16, 20, 45, 48, 26}; 
        int length = arr.length; 
        System.out.println("Array before sorting - \n" + Arrays.toString(arr));
		sort(arr, 0, length-1); 
		System.out.println("Array after sorting - \n" + Arrays.toString(arr)); 
		
    } 
    
	static int partition(int arr[], int low, int high) 
	{ 
		int pivot = arr[high]; 
		int i = (low-1);
		for (int j=low; j<high; j++) 
		{ 
			if (arr[j] < pivot) 
			{ 
				i++; 
				int temp = arr[i]; 
				arr[i] = arr[j]; 
				arr[j] = temp; 
			} 
		} 
		int temp = arr[i+1]; 
		arr[i+1] = arr[high]; 
		arr[high] = temp; 

		return i+1; 
	} 

	static void sort(int arr[], int low, int high) 
	{ 
		if (low < high) 
		{ 
			int pi = partition(arr, low, high); 
			sort(arr, low, pi-1); 
			sort(arr, pi+1, high); 
		} 
	} 
}