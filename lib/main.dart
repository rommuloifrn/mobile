import 'Tela1.dart';
import 'Tela2.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: TelaEscolha()));
}

class TelaEscolha extends StatelessWidget{
  Widget build(BuildContext bc){
    return
    Scaffold(
      appBar: AppBar(title: Text("CalisApp")),
      body: Center(
        heightFactor: 100,
        widthFactor: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
                child: Container(child: Text("dsgdsfsfdsfs"), color: Colors.amber),
                onPressed: (){
                  Navigator
                      .of(bc)
                      .push(
                        MaterialPageRoute(
                            builder: (bc) => Tela1("Jose de Paula")
                        )
                      );
                }
            ),
            FloatingActionButton(
                child:
                Text("Tela 2"),
                onPressed: (){
                  Navigator
                      .of(bc)
                      .push(
                        MaterialPageRoute(
                            builder: (bc) => Tela2()
                        )
                  );
                }
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 300,
              padding: EdgeInsets.all(16.0),

              child: const Text("dsgdsfsfdsfs", style: TextStyle(
                color: Colors.white,
                ),
              ), 
              ),

              
            
          ],
        ),
      )
    );
  }
}