import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import 'cheap_date_and_time_class.dart';
import 'provider_date_and_time.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapDateAndTimeObject =
        context.select<ProviderDateAndTime, CheapDateAndTimeClass>(
            (provider) => provider.cheapDateAndTimeObject);
    return Container(
      height: 100,
      color: Colors.yellow,
      child: Column(
        children: [
          const Text(AppTexts.cheapWidget),
          const Text(AppTexts.lastUpdated),
          Text(cheapDateAndTimeObject.lastUpdated),
        ],
      ),
    );
  }
}
