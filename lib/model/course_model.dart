class CourseModel{
  final String name;
  final String des;
  final String image;
  final String lessonNum;
  final String time;

  CourseModel(this.name, this.des, this.image, this.lessonNum, this.time);
}

List<CourseModel> courseModel=[
  CourseModel("Foundation", "In this module, you will learn about foundational psychological theories and finding.", "lib/images/foundation.jpg", "Lesson 1", "1hr 15min"),
  CourseModel("Cognition", "In this module, you will learn about cognitive psychological theories.", "lib/images/cognition.jpg", "Lesson 2", "1hr 30min"),
  CourseModel("Self and others", "In this module, you will learn about psychology examining the self and others.", "lib/images/self.jpg", "Lesson 3", "1hr 45min"),
];