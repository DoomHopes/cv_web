import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bender'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Column(
            children: <Widget>[
              Image.asset('assets/Bender.jpg'),
              Text(
                'Bite my shiny metal ass',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ahahahahha',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
