import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your fav colour?',
      'What is your fav animal?'
    ];
    return MaterialApp(home: Scaffold(
            appBar: AppBar(title: Text('My first App')),
            body: Column(children: [
              Text('The question'),
              RaisedButton(child: Text('Answer1'), onPressed: null),
              RaisedButton(child: Text('Answer2'), onPressed: null),
              RaisedButton(child: Text('Answer3'), onPressed: null),
            
            ],))
    );
   }
}