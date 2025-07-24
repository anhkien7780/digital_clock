import 'package:flutter/material.dart';

import '../../model/digital_number.dart';
import '../../model/direction.dart';
import 'digital_clock_digit_item.dart';

class DigitalClockDigit extends StatelessWidget {
  final DigitalNumber digitalNumber;

  const DigitalClockDigit({super.key, required this.digitalNumber});

  @override
  Widget build(BuildContext context) {
    Stack digitalClockDigit;
    switch (digitalNumber) {
      case DigitalNumber.zero:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: true,
          bottomLeft: true,
          topRight: true,
          bottomRight: true,
          bottom: true,
          middle: false,
        );
        break;
      case DigitalNumber.one:
        digitalClockDigit = _digitClockDigit(
          top: false,
          topLeft: false,
          bottomLeft: false,
          topRight: true,
          bottomRight: true,
          bottom: false,
          middle: false,
        );
        break;
      case DigitalNumber.two:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: false,
          bottomLeft: true,
          topRight: true,
          bottomRight: false,
          bottom: true,
          middle: true,
        );
        break;
      case DigitalNumber.three:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: false,
          bottomLeft: false,
          topRight: true,
          bottomRight: true,
          bottom: true,
          middle: true,
        );
        break;
      case DigitalNumber.four:
        digitalClockDigit = _digitClockDigit(
          top: false,
          topLeft: true,
          bottomLeft: false,
          topRight: true,
          bottomRight: true,
          bottom: false,
          middle: true,
        );
        break;
      case DigitalNumber.five:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: true,
          bottomLeft: false,
          topRight: false,
          bottomRight: true,
          bottom: true,
          middle: true,
        );
        break;
      case DigitalNumber.six:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: false,
          bottomLeft: true,
          topRight: true,
          bottomRight: true,
          bottom: true,
          middle: true,
        );
        break;
      case DigitalNumber.seven:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: false,
          bottomLeft: false,
          topRight: true,
          bottomRight: true,
          bottom: false,
          middle: false,
        );
        break;
      case DigitalNumber.eight:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: true,
          bottomLeft: true,
          topRight: true,
          bottomRight: true,
          bottom: true,
          middle: true,
        );
        break;
      case DigitalNumber.nine:
        digitalClockDigit = _digitClockDigit(
          top: true,
          topLeft: true,
          bottomLeft: false,
          topRight: true,
          bottomRight: true,
          bottom: true,
          middle: true,
        );
        break;
    }
    return SizedBox(width: 52, height: 96, child: digitalClockDigit);
  }

  Stack _digitClockDigit({
    required bool top,
    required bool topLeft,
    required bool bottomLeft,
    required bool topRight,
    required bool bottomRight,
    required bool bottom,
    required bool middle,
  }) {
    return Stack(
      children: [
        DigitalClockDigitItem(isShow: top, direction: Direction.top),
        DigitalClockDigitItem(isShow: topLeft, direction: Direction.topLeft),
        DigitalClockDigitItem(
          isShow: bottomLeft,
          direction: Direction.bottomLeft,
        ),
        DigitalClockDigitItem(isShow: topRight, direction: Direction.topRight),
        DigitalClockDigitItem(
          isShow: bottomRight,
          direction: Direction.bottomRight,
        ),
        DigitalClockDigitItem(isShow: bottom, direction: Direction.bottom),
        DigitalClockDigitItem(isShow: middle, direction: Direction.middle),
      ],
    );
  }
}
