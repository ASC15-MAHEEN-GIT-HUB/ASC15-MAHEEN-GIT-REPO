public class LearnerApp {
    public static void main(String[] args) {
        //workingWithArrays();
        workingWithMaps();
    }

    private static void workingWithArrays() {
        LearnerArrayData learnerData = new LearnerArrayData();
        learnerData.assignLearnerNames();
        learnerData.printLearnerNames();
    }

    private static void workingWithMaps() {
        LearnerAnswersMap learnerAnswers = new LearnerAnswersMap();
        learnerAnswers.assignLearnerAnswers();
        learnerAnswers.displayLearnerAnswers();
    }
}