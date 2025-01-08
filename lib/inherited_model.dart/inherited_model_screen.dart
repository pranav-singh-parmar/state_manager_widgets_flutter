import 'package:flutter/material.dart';

import '../utility/extensions.dart';
import 'available_colors_widget.dart';
import 'color_widget.dart';

class InheritedModelScreen extends StatefulWidget {
  const InheritedModelScreen({super.key});

  @override
  State<InheritedModelScreen> createState() => _InheritedModelScreenState();
}

class _InheritedModelScreenState extends State<InheritedModelScreen> {
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
      appBar: AppBar(),
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
