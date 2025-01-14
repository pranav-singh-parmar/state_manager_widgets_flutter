import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import '../../../../utility/ui_extensions.dart';
import '../../../widgets/theme_elevated_button.dart';
import 'cheap_widget.dart';
import 'expensive_widget.dart';
import 'provider_date_and_time.dart';
import 'provider_date_and_time_widget.dart';

class ProviderDateAndTimeScreen extends StatelessWidget {
  const ProviderDateAndTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        context.read<ProviderDateAndTime>().stop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppTexts.providerDateAndTime,
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const CheapWidget(),
                const ExpensiveWidget(),
              ].expandEqually().toList(),
            ),
            Row(
              children: [
                ProviderDateAndTimeWidget(),
              ].expandEqually().toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ThemeElevatedButton(
                    onPressed: () {
                      context.read<ProviderDateAndTime>().start();
                    },
                    child: Text(AppTexts.start),
                  ),
                  ThemeElevatedButton(
                    onPressed: () {
                      context.read<ProviderDateAndTime>().stop();
                    },
                    child: Text(AppTexts.stop),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
