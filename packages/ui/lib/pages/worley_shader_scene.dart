// This code refers to the GraphX package v1.0.9
// https://github.com/roipeker/graphx/blob/master/example/lib/demos/colorful_shaders/colorful_shaders_scene.dart
import 'package:flutter/material.dart' show BlendMode, Colors;
import 'package:graphx/graphx.dart';

class WorleyShadersScene extends GSprite {
  late List<WorleyShader> shaders;

  // ColorfulShader shader;

  @override
  void dispose() {
    // shader.dispose();
    for (final shader in shaders) {
      shader.dispose();
    }
    super.dispose();
  }

  @override
  Future<void> addedToStage() async {
    stage!.color = Colors.black;
    stage!.maskBounds = true;

    if (kIsWeb) {
      trace('This particular GLSL shader is not supported (currently) on web.');
    }

    /// Load the shader program.
    final program = await ResourceLoader.loadShader('shaders/worley.frag');

    // Option 1: use 1 shader for all.
    // var shader = ColorfulShader(shader: program.fragmentShader());

    // Option 2: create a few shaders.
    shaders = List.generate(
      4,
      (index) => WorleyShader(shader: program.fragmentShader()),
    );

    final boxes = List.generate(10, (index) {
      final shader = Math.randomList(shaders);
      // final color = Colors.primaries[index % Colors.primaries.length];

      final box = addChild(GShape());
      box.graphics
          // .lineStyle(1, color)
          .lineStyle(4)
          .lineShaderStyle(shader)
          .blendMode(BlendMode.plus)
          .beginShader(shader)
          .blendMode(BlendMode.plus)
          .drawCircle(60, 60, 60)
          .endFill();

      box.scale = 1 + Math.random() * 8;
      box.x = Math.randomRange(0, 600);
      box.y = Math.randomRange(0, 400);
      box.userData = Math.random() * .13;
      // box.alignPivot();
      box.pivotY = Math.random() * 100;
      box.pivotX = Math.random() * 100;
      box.alpha = .27 + Math.random() * .5;
      return box;
    });

    stage!.onEnterFrame.add((delta) {
      // OPTION 1: use 1 shader for all, and update it
      // shader.time += .1;
      // shader();

      // OPTION 2: use many shader programs.
      for (final shader in shaders) {
        shader.inc();
      }

      for (final box in boxes) {
        // ignore: cast_nullable_to_non_nullable
        final rnd = box.userData as double;
        box.scale += rnd * .5;
        final ease = rnd.abs() / 4;
        box.x += (mouseX - box.x) * ease;
        box.y += (mouseY - box.y) * (ease / 4);

        /// Flip the random direction when the scale is "out of bounds".
        if (box.scale > 10) {
          box.scale = 10;
          box.userData = rnd * -1;
        } else if (box.scale < .1) {
          box.scale = .1;
          box.userData = rnd * -1;
        }
      }
    });
  }
}

class WorleyShader extends DisplayShader {
  WorleyShader({required super.shader}) {
    _inc = .025 + Math.random() * .1;
  }

  // Change params.
  double time = 0;
  double width = 150;
  double height = 200;

  double _inc = 0;

  void inc() {
    time += _inc;
    update();
  }

  @override
  List<double> get floats => [width, height, time];
}
