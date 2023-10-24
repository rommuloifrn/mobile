import 'package:flutter/material.dart';

void main() {
  runApp(const WorkoutPage());
}

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: const Text("Treino"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
