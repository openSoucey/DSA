import java.util.Arrays;

class MergeSort 
{ 
    public static void main(String args[]) 
	{ 
		int arr[] = {2, 34, 27, 59, 16, 20, 45, 48, 26}; 
        System.out.println("Array before sorting - \n" + Arrays.toString(arr));
 
		msort(arr, 0, arr.length-1); 
		System.out.println("Array after sorting - \n" + Arrays.toString(arr));
    } 
    
	static void merge(int arr[], int l, int m, int r) 
	{ 
		int number1 = m - l + 1; 
		int number2 = r - m; 
		int L[] = new int [number1]; 
		int R[] = new int [number2]; 
		for (int i=0; i<number1; ++i) 
			L[i] = arr[l + i]; 
		for (int j=0; j<number2; ++j) 
			R[j] = arr[m + 1+ j]; 

		int i = 0, j = 0; 
		int k = l; 
		while (i < number1 && j < number2){ 
			if (L[i] <= R[j]) { 
				arr[k] = L[i]; 
				i++; 
			} 
			else{ 
				arr[k] = R[j]; 
				j++; 
			} 
			k++; 
		} 

		while (i < number1){ 
			arr[k] = L[i]; 
			i++; 
			k++; 
		} 

		while (j < number2){ 
			arr[k] = R[j]; 
			j++; 
			k++; 
		} 
	} 

	static void msort(int arr[], int l, int r){ 
		if (l < r){ 
			int m = (l+r)/2; 
			msort(arr, l, m); 
			msort(arr , m+1, r); 
			merge(arr, l, m, r); 
		} 
	} 

} 
