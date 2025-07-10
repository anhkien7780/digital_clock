import 'package:flutter/material.dart';

import '../../model/direction.dart';
import '../painter/digital_clock_painter.dart';

class DigitalClockDigitItem extends StatelessWidget {
  final bool isShow;
  final Direction direction;

  const DigitalClockDigitItem({
    super.key,
    required this.isShow,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    (double left, double top) position = _getPosition(direction);
    return Positioned(
      left: position.$1,
      top: position.$2,
      child: CustomPaint(
        painter: DigitalClockPainter(isShow: isShow, direction: direction),
      ),
    );
  }

  (double, double) _getPosition(Direction direction) {
    switch (direction) {
      case Direction.top:
        return (0.5, 0);
      case Direction.topLeft:
        return (0, 2);
      case Direction.bottomLeft:
        return (0, 49);
      case Direction.topRight:
        return (44, 2.5);
      case Direction.bottomRight:
        return (44, 49.5);
      case Direction.bottom:
        return (2, 88);
      case Direction.middle:
        return (1.5, 44);
    }
  }
}
