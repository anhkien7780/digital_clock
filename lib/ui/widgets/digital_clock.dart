import 'dart:async';

import 'package:flutter/material.dart';

import '../../model/digital_number.dart';
import '../../utils/helper.dart';
import 'digital_clock_digit.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  (int, int) minutes = (0, 0);
  (int, int) second = (0, 0);
  Timer? timer;
  late DateTime dateTime;

  void updateTime() {
    dateTime = DateTime.now();
    minutes = toCoupleDigit(dateTime.minute);
    second = toCoupleDigit(dateTime.second);
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        updateTime();
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            DigitalClockDigit(digitalNumber: DigitalNumber.values[minutes.$1]),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[minutes.$2]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Container(width: 10, height: 10, color: Color(0xff171717)),
                Container(width: 10, height: 10, color: Color(0xff171717)),
              ],
            ),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[second.$1]),
            DigitalClockDigit(digitalNumber: DigitalNumber.values[second.$2]),
          ],
        ),
      ),
    );
  }
}


