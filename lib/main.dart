import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp>{
  Color _containerColor = Colors.yellow;
  void changeColor(){
    setState(() {
      if(_containerColor == Colors.yellow){
        _containerColor = Colors.red;
      }
      else{
        _containerColor = Colors.yellow;
      }
    });
  }


@override
Widget  build (BuildContext context){
  return MaterialApp(
    title: "statefullWidget",
    theme: ThemeData(
      primaryColor: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("statefull Widget"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: _containerColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeColor,
        child: Icon(Icons.add),
        tooltip: 'clicked',
      ),
    ),
  );
}
}