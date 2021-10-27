import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("column Row"),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('List 1'),
        ),
        ListTile(
          title: Text('List 1'),
        ),
        ListTile(
          title: Text('List 1'),
        ),
        ListTile(
          title: Text('List 1'),
        ),
      ],
    );
  }
}
