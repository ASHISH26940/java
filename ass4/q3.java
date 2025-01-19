package ass4;

public class q3 {
    public static void main(String[] args) {
        Account a=new Account(1000,5000,"John","1234567890");
    }
}

class Account{
    double amt,balance;
    String name,accno;
    Account(double amt,double balance,Sting name,String accno){
        this.amt=amt;
        this.balance=balance;
        this.name=name;
        this.accno=accno;
    }
    abstract deposit();
    abstract withdraw();
    abstract display();

}
