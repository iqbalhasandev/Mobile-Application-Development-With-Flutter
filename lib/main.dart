import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text('this is a demo app'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('this is a demo body'),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Text('button')),
      ),
    ));
