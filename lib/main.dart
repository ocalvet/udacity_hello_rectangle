import 'package:flutter/material.dart';
import './simple_button.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: Column(
          children: [
            SimpleButton(),
            SimpleButton(),
          ])
      ),
    ),
  );
}