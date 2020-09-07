import 'package:flutter/material.dart';
import 'testapi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF091945),
        scaffoldBackgroundColor: Color(0xFF091945),
        cardColor: Color(0xFF152451),
        accentColor: Colors.deepPurpleAccent,
      ),
      home: TestApi(),
    );
  }
}
