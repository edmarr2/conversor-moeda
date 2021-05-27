import 'package:conversor_app/app/views/components/home_view.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de conversão',
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}

