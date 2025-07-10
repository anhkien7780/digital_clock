import 'package:flutter/material.dart';

import '../../model/direction.dart';
import '../painter/digital_clock_painter.dart';

class DigitalNumberComponentItem extends StatelessWidget {
  final bool isShow;
  final Direction direction;

  const DigitalNumberComponentItem({
    super.key,
    required this.isShow,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    (double left, double top) position;
    switch (direction) {
      case Direction.top:
        position = (0.5, 0);
      case Direction.topLeft:
        position = (0, 2);
      case Direction.bottomLeft:
        position = (0, 49);
      case Direction.topRight:
        position = (44, 2.5);
      case Direction.bottomRight:
        position = (44, 49.5);
      case Direction.bottom:
        position = (2, 88);
      case Direction.middle:
        position = (1.5, 44);
    }
    return Positioned(
      left: position.$1,
      top: position.$2,
      child: CustomPaint(
        painter: DigitalClockPainter(isShow: isShow, direction: direction),
      ),
    );
  }
}
