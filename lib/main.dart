import 'package:flutter/material.dart';
import 'package:returnproduct/reason.dart';
import 'package:returnproduct/refund.dart';
import 'package:returnproduct/selectedreason.dart';
import 'package:returnproduct/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white), // Default text color
          bodyText2: TextStyle(color: Colors.white), // Default text color
          // Add more text styles if needed
        ),
      ),
    debugShowCheckedModeBanner: false,
      home: Reason(),
    );
  }
}
