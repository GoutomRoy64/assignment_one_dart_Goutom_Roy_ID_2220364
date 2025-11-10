// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
// TODO: Complete the following requirements:

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  // TODO: Create the student names list
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  
  // 2. Create a Map<String, int> to store student scores
  // TODO: Create the scores map
  Map<String, int> studentScores = {};
  
  // 3. Use a for loop to assign random scores (60-100) to each student
  // TODO: Implement the for loop to assign random scores
  Random random = Random();
  // TODO: Add your for loop here
  for (String student in studentNames) {
    // random.nextInt(41) gives a number from 0-40. 
    // Add 60 to get a range of 60-100.
    int score = random.nextInt(41) + 60;
    studentScores[student] = score;
  }
  
  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  // TODO: Implement the logic to find highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double totalScore = 0.0; // Use this to calculate the average
  
  // TODO: Add your logic here
  studentScores.forEach((student, score) {
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
    totalScore += score;
  });

  double averageScore = 0.0;
  if (studentNames.isNotEmpty) {
    averageScore = totalScore / studentNames.length;
  }
  
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");
  
  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  // TODO: Implement the switch statement for each student
  print("\n--- Student Categories ---"); // Added for readability
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";
    
    // TODO: Add your switch statement here
    switch (score ~/ 10) { // This does integer division (e.g., 85 ~/ 10 = 8)
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default: // This catches 6 (for 60-69) and anything lower
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}