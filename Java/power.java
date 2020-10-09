import java.util.Scanner;

public class power{
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        System.out.println("Enter the base");
        int base = scn.nextInt();
        System.out.println("Enter the power");
        int power = scn.nextInt();

        System.out.println(devide(base, power));

    }

    static int devide(int base, int power){
        int temp = 1;
        if(power == 1)
            return base;
        if(power%2 == 1){
            temp = base;
            power--;
        }
        power /= 2;
        return devide(base, power) * devide(base, power)*temp;
    }
}