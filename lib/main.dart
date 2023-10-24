import 'package:flutter/material.dart';
//import 'workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text("CalisApp"),
      ),
      body: Column(
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.red[400],
        onPressed: () {},
      ),
      // body: Container(
      //   child: const Text("gigachops"),
      //   padding: const EdgeInsets.all(10),
      //   margin: const EdgeInsets.all(20),
      //   color: Colors.amber,
      // ),
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
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.black26,
      ),
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
    );
  }
}
