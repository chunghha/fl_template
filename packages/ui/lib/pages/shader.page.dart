import 'package:flutter/material.dart';
import 'package:graphx/graphx.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';
import 'worley_shader_scene.dart';

class ShaderPage extends StatelessWidget {
  const ShaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: pineColor,
        title: Text(
          CURRENT_PAGE.shader.toTitle(),
          style: titleStyle,
        ),
      ),
      body: SceneBuilderWidget(
        builder: () => SceneController(front: WorleyShadersScene()),
        autoSize: true,
      ),
    );
  }
}
