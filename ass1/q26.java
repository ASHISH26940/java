package ass1;

public class q26 {
    public static void main(String[] args) {
        int n=6,s=0;
        for(int i=0;i<n;i++)
        {
            if(n%i==0)
            {
                s+=i;
            }
        }
        if(s==n)
        {
            System.out.println("Perfect number");
        }
        else
        {
            System.out.println("Not a perfect number");
        }
    }
}
