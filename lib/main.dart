import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tokyo 2020 Olympic Games',
      home: HomeScreen(),
    );
  }
}
