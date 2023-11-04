import 'package:flutter/material.dart';
import 'package:carrier/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LuggageCarrier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: log_in(),
    );
  }
}

