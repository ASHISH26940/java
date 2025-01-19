package ass1;

import java.util.Scanner;

public class leapYear {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the year: ");
        int year=sc.nextInt();
        if(isLeapYear(year)){
            System.out.println(year+" is a leap year");}
            else{
                System.out.println(year+" is not a leap year");
            }
            sc.close();
    }
    public static boolean isLeapYear(int year){
        return (year%4==0)
    }
}
