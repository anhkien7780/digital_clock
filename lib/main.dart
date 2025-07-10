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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            DigitalClockDigit(digitalNumber: DigitalNumber.zero),
            DigitalClockDigit(digitalNumber: DigitalNumber.zero),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Container(width: 10, height: 10, color: Color(0xff171717)),
                Container(width: 10, height: 10, color: Color(0xff171717)),
              ],
            ),
            DigitalClockDigit(digitalNumber: DigitalNumber.zero),
            DigitalClockDigit(digitalNumber: DigitalNumber.zero),
          ],
        ),
      ),
    );
  }
}
