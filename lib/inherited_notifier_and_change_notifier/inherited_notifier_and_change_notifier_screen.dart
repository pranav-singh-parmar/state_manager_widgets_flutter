import 'package:flutter/material.dart';

import '../utility/ui_extensions.dart' show ExpandEqually;
import 'slider_data.dart';
import 'slider_inherited_notifier.dart';

class InheritedNotifierAndChangeNotifierScreen extends StatelessWidget {
  InheritedNotifierAndChangeNotifierScreen({super.key});

  final sliderData = SliderData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SliderInheritedNotifier(
        sliderData: sliderData,
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                Slider(
                  value: SliderInheritedNotifier.of(context),
                  onChanged: (value) {
                    sliderData.value = value;
                  },
                ),
                Row(
                  children: [
                    _container(context: context, color: Colors.yellow),
                    _container(context: context, color: Colors.blue),
                  ].expandEqually().toList(),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _container({
    required BuildContext context,
    required Color color,
  }) {
    return Opacity(
        opacity: SliderInheritedNotifier.of(context),
        child: Container(
          color: color,
          height: 200,
        ));
  }
}
