import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget{

  String nomeUsuario = "";

  Tela1(String nomeUsuario){
    this.nomeUsuario = nomeUsuario;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF11ad),
      appBar: AppBar(title: Text("Ola $nomeUsuario")),
      body: Center(
        child: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      )
    );
  }
}