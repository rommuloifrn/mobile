import 'models.dart';

void main() {
  var w = Workout("sup");
  var flexao = Exercise("prancha", 23);

  w.exerciseList.add(flexao);
  print(w.exerciseList[0].name);

}