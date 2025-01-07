import 'package:flutter/material.dart';

import 'get_date_time_provider.dart';

class DateAndTimeWidget extends StatelessWidget {
  const DateAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = GetDateTimeProvider.of(context).provider;
    return Text(provider.dateTime ?? "Tap on Screen to fetch details");
  }
}
