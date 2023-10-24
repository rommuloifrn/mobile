import 'package:flutter/material.dart';

void main() {
  runApp(const WorkoutPage());
}

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Treino")),
      ),
    );
  }
}
