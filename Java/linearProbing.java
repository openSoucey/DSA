import java.util.*;
public class linearProbing{
	//linear probing
	static int setA[] = {12,34, 11, 9, 3};
	static int setB[] = {2,1,3,5};
	static int t_size = 100;
	static int hashTable[] = new int [t_size];
	
public static int hashFunc(int num){
		int Val = num % t_size;
		return Val;
}

public static void main(String []args){
	

	for (int i=0; i<setA.length ; i++){
		for(int j=0; j<t_size; j++){
			int hashVal = hashFunc(setA[i]);
			if (hashTable[j] == 0){
				hashTable[hashVal] = setA[i];
			}else{
				hashTable[hashVal+1] = setA[i];
			}
		}
	}
	boolean flag = true;
	
	for (int j=0; j<t_size ; j++){
		for (int k=0; k<setB.length ; k++){
			if (hashTable[j]==setB[k]){
				flag= false;
			}
		}
	}
	
		
		System.out.println(flag);
		
	
	
	System.out.println(hashTable);
	


}}
