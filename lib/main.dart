import 'package:bloc_example/features/project1/project1_page.dart';
import 'package:bloc_example/features/project2/project2_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Project2Page(),
    );
  }
}