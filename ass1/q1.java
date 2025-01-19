public class q1{
    public static void main(String[] args){
        // Check if the number of arguments is less than 2
        if(args.length <2){
            System.out.println("No arguments provided");
        }
        try {
            double num=Double.parseDouble(args[0]);
            double num2=Double.parseDouble(args[1]);
            double sum=num+num2;
            System.out.println("Sum of "+num+" and "+num2+" is "+sum);
        } catch (NumberFormatException e) {
            System.out.println("Invalid input");
        }
    }
}