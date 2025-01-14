import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import 'provider_date_and_time.dart';

class ProviderDateAndTimeWidget extends StatelessWidget {
  const ProviderDateAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProviderDateAndTime>();
    return Container(
      height: 100,
      color: Colors.purple,
      child: Column(
        children: [
          const Text(AppTexts.objectProvider),
          const Text(AppTexts.id),
          Text(provider.id),
        ],
      ),
    );
  }
}
