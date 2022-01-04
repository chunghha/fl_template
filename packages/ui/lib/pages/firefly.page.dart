import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class FireflyPage extends HookWidget {
  const FireflyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _numbers = useState(0.0);

    final _controller = useAnimationController();

    // just a trick here
    // TODO: firefly should fly its own.
    useEffect(
      () {
        var _ticks = 0;

        final timer = Timer.periodic(const Duration(milliseconds: 200), (time) {
          _ticks++;

          final _r = (_ticks / 100).remainder(2);
          _numbers.value = _r < 1 ? _numbers.value + 1.0 : _numbers.value - 1.0;
        });
        return timer.cancel;
      },
      const [],
    );

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: loveColor,
        title: Text(CURRENT_PAGE.firefly.toTitle()),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, snapshot) {
                  return CustomPaint(
                    painter: FireFlyPainter(
                      _numbers.value.toInt(),
                    ),
                    child: Container(),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
            ),
            Slider(
              value: _numbers.value,
              min: -1.0,
              max: 100.0,
              label: _numbers.value.toInt().toString(),
              divisions: 100,
              onChanged: (value) => _numbers.value = value,
            ),
          ],
        ),
      ),
    );
  }
}

// For painting fireflies
class FireFlyPainter extends CustomPainter {
  final int numbers;

  FireFlyPainter(this.numbers);

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < numbers; i++) {
      final _offset = Offset(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      final _radius = Random().nextInt(30) + 5.0;

      final _path = Path();
      _path.addOval(Rect.fromCircle(center: _offset, radius: _radius));

      final _opacity = (Random().nextInt(8) + 2) / 10;
      final Color _color = Colors
          .primaries[Random().nextInt(Colors.primaries.length)]
          .withOpacity(_opacity);

      final _paint = Paint()
        ..color = _color
        ..style = PaintingStyle.fill
        ..strokeCap = StrokeCap.round;
      canvas.drawPath(_path, _paint);

      _paint.style = PaintingStyle.stroke;
      _paint.strokeWidth = 2.0;
      _paint.blendMode = BlendMode.colorDodge;

      _path.moveTo(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      _path.quadraticBezierTo(
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
        Random().nextInt(size.width.floor() - 1) + 0.5,
        Random().nextInt(size.height.floor() - 1) + 0.5,
      );
      canvas.drawPath(_path, _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
