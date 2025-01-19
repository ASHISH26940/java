public class SequenceGenerator {
    public static void main(String[] args) {
        // Number of terms to generate
        int terms = 5; // Change this value as needed

        // Starting characters
        char firstLetter = 'A'; // First letter starts with 'A'
        char secondLetter = 'M'; // Second and third letters start with 'M'

        // Generate the sequence
        for (int i = 0; i < terms; i++) {
            System.out.println("" + firstLetter + secondLetter + secondLetter);

            // Increment the characters
            firstLetter += 2;
            secondLetter += 2;
        }
    }
}
