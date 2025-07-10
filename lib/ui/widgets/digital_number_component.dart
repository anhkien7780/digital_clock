import 'package:flutter/material.dart';

import '../../model/digital_number.dart';
import '../../model/direction.dart';
import 'digital_number_component_item.dart';

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
