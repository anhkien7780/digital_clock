import 'package:flutter/material.dart';

import '../../model/direction.dart';

class DigitalClockPainter extends CustomPainter {
  bool isShow = false;
  final Direction direction;

  DigitalClockPainter({required this.isShow, required this.direction});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    paint.color = isShow ? Color(0xff171717) : Color(0xffE6E6E6);
    final path = Path();
    switch (direction) {
      case Direction.top:
        final (double width, double height) sized = (51.5, 8);
        path.moveTo(0, 0);
        path.lineTo(sized.$1, 0);
        path.lineTo(sized.$1 - 9.5, sized.$2);
        path.lineTo(9, sized.$2);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.bottom:
        final (double width, double height) sized = (48, 8);
        path.moveTo(0, sized.$2);
        path.lineTo(sized.$1, sized.$2);
        path.lineTo(sized.$1 - 7.5, 0);
        path.lineTo(7.5, 0);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.middle:
        final (double width, double height) sized = (49.5, 8);
        path.moveTo(0, sized.$2 / 2);
        path.lineTo(6.5, 0);
        path.lineTo(sized.$1 - 7, 0);
        path.lineTo(sized.$1, sized.$2 / 2);
        path.lineTo(sized.$1 - 7, sized.$2);
        path.lineTo(6.5, sized.$2);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.topLeft:
        final (double width, double height) sized = (8, 45);
        path.moveTo(0, 0);
        path.lineTo(0, sized.$2);
        path.lineTo(sized.$1, sized.$2 - 5);
        path.lineTo(sized.$1, 7.5);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.bottomLeft:
        final (double width, double height) sized = (8, 46);
        path.moveTo(0, 0);
        path.lineTo(0, sized.$2);
        path.lineTo(sized.$1, sized.$2 - 8.5);
        path.lineTo(sized.$1, 5);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.topRight:
        final (double width, double height) sized = (8, 44.5);
        path.moveTo(sized.$1, 0);
        path.lineTo(sized.$1, sized.$2);
        path.lineTo(0, sized.$2 - 5);
        path.lineTo(0, 7);
        path.close();
        canvas.drawPath(path, paint);
      case Direction.bottomRight:
        final (double width, double height) sized = (8, 45.5);
        path.moveTo(sized.$1, 0);
        path.lineTo(sized.$1, sized.$2);
        path.lineTo(0, sized.$2 - 8);
        path.lineTo(0, 4.5);
        path.close();
        canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
