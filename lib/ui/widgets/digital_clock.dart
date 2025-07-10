import 'package:flutter/material.dart';

import '../../model/digital_number.dart';
import 'digital_clock_digit.dart';

class DigitalClock extends StatefulWidget {
  final (int, int) hour;
  final (int, int) minute;

  const DigitalClock({super.key, required this.hour, required this.minute});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            DigitalClockDigit(digitalNumber: DigitalNumber.values[widget.hour.$1]),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[widget.hour.$2]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Container(width: 10, height: 10, color: Color(0xff171717)),
                Container(width: 10, height: 10, color: Color(0xff171717)),
              ],
            ),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[widget.minute.$1]),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[widget.minute.$2]),
          ],
        ),
      ),
    );
  }
}