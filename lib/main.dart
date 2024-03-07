import 'package:flutter/material.dart';
import 'package:flutter20/bar.dart';
import 'package:flutter20/flipkrd.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Navigation(),
    );
  }
}