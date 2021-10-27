import 'package:flutter/material.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Exercise App"),
        ),
        body: ListViewContent(),
      ),
    );
  }
}

class ListViewContent extends StatelessWidget {
  final Zilla = [
    "Rajshahi",
    "Comilla",
    "Sylhet",
    "Pabna",
    "Dhaka",
    "Chottogram",
    "Bangura"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Zilla.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(
            child: Text(Zilla[index]),
          ),
        );
      },
    );
  }
}
