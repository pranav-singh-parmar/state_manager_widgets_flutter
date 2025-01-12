import 'package:flutter/material.dart';

import '../../../../utility/app_texts.dart';

class ProviderDateAndTimeScreen extends StatelessWidget {
  const ProviderDateAndTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.providerDateAndTime,
        ),
      ),
    );
  }
}
