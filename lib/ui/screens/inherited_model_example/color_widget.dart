import 'package:flutter/material.dart';

import '../../../utility/nonui_extensions.dart' show Log;
import 'available_colors_widget.dart';

class ColorWidget extends StatelessWidget {
  final AvailableColors availableColor;

  const ColorWidget({super.key, required this.availableColor});

  @override
  Widget build(BuildContext context) {
    final inheritedModel = AvailableColorsWidget.of(context, availableColor);

    final MaterialColor color;
    switch (availableColor) {
      case AvailableColors.one:
        "Color 1 Rebuit".log();
        color = inheritedModel.color1;
        break;
      case AvailableColors.two:
        "Color 2 Rebuit".log();
        color = inheritedModel.color2;
        break;
    }

    return Container(
      color: color,
      height: 200,
    );
  }
}
