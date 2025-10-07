import java.util.*;

public class LearnerAnswersMap {
    TreeMap<String,String> learnerAnswersMap = new TreeMap<String,String>();
    public void assignLearnerAnswers() {
        learnerAnswersMap.put("Maheen", "Private variables cannot be accessed outside the class");
        learnerAnswersMap.put("Gagan", "The main method should always be main, otherwise we will not be able to run the program");
        learnerAnswersMap.put("Khyati", "The HashMap belongs to the java.util package");
        learnerAnswersMap.put("Mavya", "Identified objects in a program");
        learnerAnswersMap.put("Anjali", "Identified the class in the program");
        learnerAnswersMap.put("Khyati", "System defined classes:HashMap");
        learnerAnswersMap.put("Charisma", "The string class");
        learnerAnswersMap.put("Vishranthi", "Ordering:unordered,insertion order,sort order");
        learnerAnswersMap.put("Swapna", "Fetch key and value");
    }

    public void displayLearnerAnswers() {
//        System.out.println("Maheen's answer: " + learnerAnswersMap.get("Maheen"));
//        System.out.println("Gagan's answer: " + learnerAnswersMap.get("Gagan"));
//        System.out.println("Khyati's answer: " + learnerAnswersMap.get("Khyati"));
//        System.out.println("Mavya's answer: " + learnerAnswersMap.get("Mavya"));
//        System.out.println("Anjali's answer: " + learnerAnswersMap.get("Anjali"));
//        System.out.println("Khyati's answer: " + learnerAnswersMap.get("Khyati"));
        //MAP OUTPUT
        System.out.println("\n\n*****************Map OUTPUT*******************");
        System.out.print(learnerAnswersMap);

//        Provided a key display value
        System.out.println("\n\n************KEY VALUE PAIRS******************\n");
        for(String key:learnerAnswersMap.keySet()){
            System.out.println(key+" : "+learnerAnswersMap.get(key));
        }

        //SET WITH ALL KEYS
        System.out.println("\nSET WITH ALL KEYS\n");
        Set<String> learnersSet=learnerAnswersMap.keySet();
        System.out.println(learnersSet);

        System.out.println("\nCollection with values\n");
        Collection<String> learnervalues=learnerAnswersMap.values();
        System.out.println(learnervalues);

        System.out.println("\nSearch for keys");
        if(learnerAnswersMap.containsKey("Khyati")){
            System.out.println("Key found");
        }
        else{
            System.out.println("Not answered yet");
        }
    }
}
