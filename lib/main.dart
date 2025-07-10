import 'package:flutter/material.dart';

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
            DigitalNumberComponent(digitalNumber: DigitalNumber.zero),
            DigitalNumberComponent(digitalNumber: DigitalNumber.zero),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  color: Color(0xff171717),
                ),
                Container(
                  width: 10,
                  height: 10,
                  color: Color(0xff171717),
                )
              ],
            ),
            DigitalNumberComponent(digitalNumber: DigitalNumber.zero),
            DigitalNumberComponent(digitalNumber: DigitalNumber.zero),
          ],
        ),
      ),
    );
  }
}

enum DigitalNumber {
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  night,
}

class DigitalNumberComponent extends StatelessWidget {
  final DigitalNumber digitalNumber;

  const DigitalNumberComponent({super.key, required this.digitalNumber});

  @override
  Widget build(BuildContext context) {
    Stack digitalNumberComponent;
    switch (digitalNumber) {
      case DigitalNumber.zero:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.one:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: false, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.two:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.three:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.four:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: false, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.five:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.six:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.seven:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.eight:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
      case DigitalNumber.night:
        digitalNumberComponent = Stack(
          children: [
            DigitalNumberComponentItem(isShow: true, direction: Direction.top),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topLeft,
            ),
            DigitalNumberComponentItem(
              isShow: false,
              direction: Direction.bottomLeft,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.topRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottomRight,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.bottom,
            ),
            DigitalNumberComponentItem(
              isShow: true,
              direction: Direction.middle,
            ),
          ],
        );
    }
    return SizedBox(width: 52, height: 96, child: digitalNumberComponent);
  }
}

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
        painter: MyCustomPainter(isShow: isShow, direction: direction),
      ),
    );
  }
}

enum Direction {
  top,
  topLeft,
  bottomLeft,
  topRight,
  bottomRight,
  bottom,
  middle,
}

class MyCustomPainter extends CustomPainter {
  bool isShow = false;
  final Direction direction;

  MyCustomPainter({required this.isShow, required this.direction});

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
