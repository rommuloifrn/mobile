import 'package:flutter/material.dart';
import 'workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent)),
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text("CalisApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Meus treinos",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const ItemPanel(),
            const ItemPanel(),
            const ItemPanel(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.red[400],
        onPressed: () {},
      ),
      
    ));
  }
}

class ItemPanel extends StatelessWidget {
  const ItemPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.black26,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const WorkoutPage())
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "superiores",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text("7 Exercicios"),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
