import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

final _estiloText = new TextStyle( fontSize: 28);
int _count = 0;

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
            Text('Número clicks', style: _estiloText,),
            Text(_count.toString(), style: _estiloText,),
          ],
        )
      ) ,
      floatingActionButton: _createButtons()
    ,);
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.clear_all), onPressed:_reset ),
        Expanded(child:  SizedBox(width: 10.0,),),
        FloatingActionButton(child: Text('-', style: TextStyle(fontSize: 24),),onPressed:_subtract ),
        SizedBox(width: 10.0,),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _add)
      ],
    );
  }
  void _add(){
    setState(() {
      _count++;
    });
  }

  void _subtract(){
    setState(() {
      _count--;
    });
  }

  void _reset(){
    setState(() {
      _count = 0;
    });
  }
} 