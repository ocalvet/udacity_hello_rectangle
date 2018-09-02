
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udacity_hello_rectangle/simple_button.dart';

class App extends StatelessWidget {
  callClick (params) {
    print("I was called with " + params);
  }
  @override
  Widget build(BuildContext context) {
    callClick("Building widget");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: Column(
          children: [
            SimpleButton(
              onClickHandler: this.callClick 
            ),
            SimpleButton(),
          ])
      ),
    );
  }
}