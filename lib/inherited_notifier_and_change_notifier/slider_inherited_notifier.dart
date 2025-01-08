import 'package:flutter/material.dart';

import 'slider_data.dart';

class SliderInheritedNotifier extends InheritedNotifier<SliderData> {
  const SliderInheritedNotifier({
    super.key,
    required SliderData sliderData,
    required super.child,
  }) : super(notifier: sliderData);

  static double of(BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<SliderInheritedNotifier>()
          ?.notifier
          ?.value ??
      0;
}
