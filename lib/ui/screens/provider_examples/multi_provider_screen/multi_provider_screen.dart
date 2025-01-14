import 'package:flutter/material.dart';

import '../../../../utility/app_texts.dart';
import '../../../../utility/ui_extensions.dart';
import 'minutes_widget.dart';
import 'seconds_widget.dart';

class MultiProviderScreen extends StatelessWidget {
  const MultiProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.multiProvider,
        ),
      ),
      body: Row(
        children: [
          SecondsWidget(),
          MinutesWidget(),
        ].expandEqually().toList(),
      ),
    );
  }
}
