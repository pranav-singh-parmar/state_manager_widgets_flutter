import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import 'expensive_date_and_time_class.dart';
import 'provider_date_and_time.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final expensiveDateAndTimeObject =
        context.select<ProviderDateAndTime, ExpensiveDateAndTimeClass>(
            (provider) => provider.expensiveDateAndTimeObject);
    return Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          const Text(AppTexts.expensiveWidget),
          const Text(AppTexts.lastUpdated),
          Text(expensiveDateAndTimeObject.lastUpdated),
        ],
      ),
    );
  }
}
