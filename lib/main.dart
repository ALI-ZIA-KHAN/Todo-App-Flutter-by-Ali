import 'package:flutter/material.dart';
import 'package:my_todo_app/home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
        
        
        
        body:Todo(),
        // body:Calculator(),
      ),
    );
  }
}