// ignore_for_file: noop_primitive_operations

import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class FireflyPage extends HookWidget {
  const FireflyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_int_literals
    final numbers = useState(0.0);

    final controller = useAnimationController();

    // just a trick here
    // TODO: firefly should fly its own.
    useEffect(
      () {
        var ticks = 0;

        final timer = Timer.periodic(const Duration(milliseconds: 200), (time) {
          ticks++;

          final r = (ticks / 100).remainder(2);
          numbers.value = r < 1 ? numbers.value + 1.0 : numbers.value - 1.0;
        });
        return timer.cancel;
      },
      const [],
    );

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: loveColor,
        title: Text(
          CURRENT_PAGE.firefly.toTitle(),
          style: titleStyle,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, snapshot) {
                  return ColoredBox(
                    color: loveColor,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: numbers.value.toDouble(),
                          sigmaY: numbers.value.toDouble() * 2,
                        ),
                        child: CustomPaint(
                          painter: FireFlyPainter(
                            numbers.value.toInt(),
                          ),
                          child: Container(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
            ),
            Slider(
              value: numbers.value,
              min: -1,
              max: 100,
              label: numbers.value.toInt().toString(),
              divisions: 100,
              onChanged: (value) => numbers.value = value,
            ),
          ],
        ),
      ),
    );
  }
}

// For painting fireflies
class FireFlyPainter extends CustomPainter {
  FireFlyPainter(this.numbers);

  final int numbers;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < numbers; i++) {
      final offset = Offset(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      final radius = Random().nextInt(30) + 5.0;

      final path = Path();
      path.addOval(Rect.fromCircle(center: offset, radius: radius));

      final opacity = (Random().nextInt(8) + 2) / 10;
      final color = Colors.primaries[Random().nextInt(Colors.primaries.length)]
          .withOpacity(opacity);

      final paint = Paint()
        ..color = color
        ..style = PaintingStyle.fill
        ..strokeCap = StrokeCap.round;
      canvas.drawPath(path, paint);

      paint.style = PaintingStyle.stroke;
      paint.strokeWidth = 2.0;
      paint.blendMode = BlendMode.colorDodge;

      path.moveTo(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      path.quadraticBezierTo(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
