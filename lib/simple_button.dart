import 'dart:math';

import 'package:flutter/material.dart';

class SimpleButton extends StatefulWidget {
  final onClickHandler;

  SimpleButton({this.onClickHandler});

  @override
  SimpleButtonState createState() => SimpleButtonState();
}

class SimpleButtonState extends State<SimpleButton> {
  Random random = new Random();
  Color selectedColor;
  @override
  initState() {
    super.initState();
    this.selectedColor = getRandomColor();
  }

  Color getRandomColor() {
    return Color.fromARGB(
      200,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
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
        widget.onClickHandler("Hello there");
      },
      child: Container(
        color: selectedColor,
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            'Hello There!',
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ));
  }
}
