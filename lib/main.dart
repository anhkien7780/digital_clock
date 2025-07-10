import 'package:digital_clock/ui/widgets/digital_clock.dart';
import 'package:digital_clock/ui/widgets/digital_clock_digit.dart';
import 'package:flutter/material.dart';

import 'model/digital_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DrawScreen(),
    );
  }
}

class DrawScreen extends StatelessWidget {
  const DrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: DigitalClock(),
      ),
    );
  }
}
