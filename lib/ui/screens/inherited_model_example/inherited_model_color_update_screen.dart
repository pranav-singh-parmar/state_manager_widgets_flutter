import 'package:flutter/material.dart';

import '../../../utility/app_texts.dart';
import '../../../utility/nonui_extensions.dart' show RandomeElement;
import 'available_colors_widget.dart';
import 'color_widget.dart';

class InheritedModelColorUpdateScreen extends StatefulWidget {
  const InheritedModelColorUpdateScreen({super.key});

  @override
  State<InheritedModelColorUpdateScreen> createState() =>
      _InheritedModelColorUpdateScreenState();
}

class _InheritedModelColorUpdateScreenState
    extends State<InheritedModelColorUpdateScreen> {
  final colors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.cyan,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.amber,
    Colors.deepPurple,
  ];

  MaterialColor color1 = Colors.yellow;
  MaterialColor color2 = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.inheritedModelColorUpdate,
        ),
      ),
      body: AvailableColorsWidget(
        color1: color1,
        color2: color2,
        child: Column(children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    color1 = colors.getRandomElement();
                  });
                },
                child: Text("Change Color 1"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    color2 = colors.getRandomElement();
                  });
                },
                child: Text("Change Color 2"),
              ),
            ],
          ),
          const ColorWidget(availableColor: AvailableColors.one),
          const ColorWidget(availableColor: AvailableColors.two),
        ]),
      ),
    );
  }
}
