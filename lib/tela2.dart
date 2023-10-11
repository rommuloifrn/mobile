import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFF00),
      body:
      Center(
          child:
          FloatingActionButton(
            child:
            Icon(Icons.backspace),
            onPressed: (){
              Navigator.pop(context);
            }
          )
      ),
    );
  }
}