

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final estiloText = new TextStyle( fontSize: 28);
  final int cont = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade200,
        elevation: 120.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número clicks', style: estiloText,),
            Text(cont.toString(), style: estiloText,),
          ],
        )
      ) ,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        tooltip: "[?]",
        onPressed: () {
          // cont = cont + 1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    ,);
  }
}