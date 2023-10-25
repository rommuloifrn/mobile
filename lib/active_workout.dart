import 'package:flutter/material.dart';



void main() {
  runApp(const ActiveWorkout());
}

class ActiveWorkout extends StatelessWidget {
  const ActiveWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent)),
        home: const Playin()
      
      
    );
  }
}

class Playin extends StatelessWidget {
  const Playin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.black38,
    title: const Text("CalisApp"),
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
      body: const Center(
    child: Text(
      "60s",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 120
      )
      ),
      ),
      );
  }
}

