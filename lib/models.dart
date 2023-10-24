class Workout {
  String name;
  List<Exercise> exerciseList = [];

  Workout(this.name);

  getList() {
    return exerciseList;
  }
}

class Exercise {
  String name;
  int? time;
  int? reps;

  Exercise(this.name, this.time);

  isIsometric() {
    return time != null;
  }
}