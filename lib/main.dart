import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatefulWidget {
  @override
  HelloRectangleState createState() => HelloRectangleState();
}

class HelloRectangleState extends State<HelloRectangle> {
  Random random = new Random();
  Color selectedColor;
  @override
  initState() {
    super.initState();
    this.selectedColor = getRandomColor();
  }
  Color getRandomColor() {
    return Color.fromARGB(200, 
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  String getQuote() {
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
          onTap: () {
            print('Changing color');
            setState(() {
              selectedColor = getRandomColor();
            });
          },
          child: Container(
            color: selectedColor,
            height: 400.0,
            width: 300.0,
            child: Center(
              child: Text(
                'Hello!',
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
    ));
  }
}
