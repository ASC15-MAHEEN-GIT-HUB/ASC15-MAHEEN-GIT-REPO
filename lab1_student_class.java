class Student {
    public int studentId;
    public String studentName;
    public String city;
    public int marks1, marks2, marks3;
    public float feePerMonth;
    public boolean isEligibleForScholarship;

    public float getAnnualFee() {
        return feePerMonth * 12;
    }

    public int getTotalMarks() {
        return marks1 + marks2 + marks3;
    }

    public float getAverage() {
        return getTotalMarks() / 3.0f;
    }

    public String getResult() {
        return (marks1 > 60 && marks2 > 60 && marks3 > 60) ? "pass" : "fail";
    }
}
public class lab1_student_class {
    public static void main(String[] args) {
        Student s1 = new Student();
        s1.studentId = 101;
        s1.studentName = "maheen";
        s1.city = "Chennai";
        s1.marks1 = 85;
        s1.marks2 = 78;
        s1.marks3 = 90;
        s1.feePerMonth = 1500.0f;
        s1.isEligibleForScholarship = true;

        Student s2 = new Student();
        s2.studentId = 102;
        s2.studentName = "sachin";
        s2.city = "Mumbai";
        s2.marks1 = 65;
        s2.marks2 = 70;
        s2.marks3 = 75;
        s2.feePerMonth = 1200.0f;
        s2.isEligibleForScholarship = false;

        Student s3 = new Student();
        s3.studentId = 103;
        s3.studentName = "kohli";
        s3.city = "Delhi";
        s3.marks1 = 95;
        s3.marks2 = 88;
        s3.marks3 = 92;
        s3.feePerMonth = 1800.0f;
        s3.isEligibleForScholarship = true;

        Student[] students = {s1, s2, s3};

        Student topStudent = students[0];
        for (Student s : students) {
            if (s.getTotalMarks() > topStudent.getTotalMarks()) {
                topStudent = s;
            }
        }
        System.out.println("Topper: " + topStudent.studentName);

        Student leastFeeStudent = students[0];
        for (Student s : students) {
            if (s.feePerMonth < leastFeeStudent.feePerMonth) {
                leastFeeStudent = s;
            }
        }
        System.out.println("Least Fee Payer: " + leastFeeStudent.studentName +
                ", Fee: " + leastFeeStudent.feePerMonth);

        System.out.println("\nStudent Details:");
        for (Student s : students) {
            System.out.println("Name: " + s.studentName);
            System.out.println("Total Marks: " + s.getTotalMarks());
            System.out.println("Average Marks: " + s.getAverage());
            System.out.println("Result: " + s.getResult());
            System.out.println("Scholarship Eligible: " + s.isEligibleForScholarship);
            System.out.println("-----------------------------");
        }
    }
}