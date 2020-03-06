import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: HomePage()
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Text('hey', style: TextStyle(color: Colors.white),)
    );
  }
}