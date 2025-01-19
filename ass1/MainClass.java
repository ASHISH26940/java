package ass1;
class EMP {
    String name;
    int id;

    // Constructor for EMP class
    EMP(String name, int id) {
        this.name = name;
        this.id = id;
    }

    // Overriding toString() method to provide custom representation
    @Override
    public String toString() {
        return "EMP [Name: " + name + ", ID: " + id + "]";
    }
}

// Subclass Scientist extends EMP
class Scientist extends EMP {
    int noOfPublications;
    int experience;

    // Constructor for Scientist class
    Scientist(String name, int id, int noOfPublications, int experience) {
        super(name, id); // Calls the constructor of the base class EMP
        this.noOfPublications = noOfPublications;
        this.experience = experience;
    }

    // Overriding toString() method to include specific details for Scientist
    @Override
    public String toString() {
        return super.toString() + ", Scientist [Publications: " + noOfPublications + ", Experience: " + experience + " years]";
    }
}

// Subclass Dscientist extends Scientist
class Dscientist extends Scientist {
    String award;

    // Constructor for Dscientist class
    Dscientist(String name, int id, int noOfPublications, int experience, String award) {
        super(name, id, noOfPublications, experience); // Calls the constructor of Scientist
        this.award = award;
    }

    // Overriding toString() method to include specific details for Dscientist
    @Override
    public String toString() {
        return super.toString() + ", Dscientist [Award: " + award + "]";
    }
}

public class MainClass {
    public static void main(String[] args) {
        // Creating objects of each class
        EMP emp = new EMP("Alice", 101);
        Scientist scientist = new Scientist("Bob", 102, 25, 10);
        Dscientist dscientist = new Dscientist("Charlie", 103, 50, 15, "Nobel Prize");

        // Printing the objects which internally calls their respective toString() method
        System.out.println(emp);            // Calls EMP's toString()
        System.out.println(scientist);      // Calls Scientist's toString()
        System.out.println(dscientist);    // Calls Dscientist's toString()
    }
}
