import 'package:flutter/material.dart';

import 'date_and_time_widget.dart';
import 'get_date_time_provider.dart';

class InheritedWidgetScreen extends StatefulWidget {
  const InheritedWidgetScreen({super.key});

  @override
  State<InheritedWidgetScreen> createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {
  ValueKey<String?> _textKey = const ValueKey(null);

  @override
  Widget build(BuildContext context) {
    final provider = GetDateTimeProvider.of(context).provider;
    return Scaffold(
      appBar: AppBar(title: Text(provider.dateTime ?? "")),
      body: GestureDetector(
        onTap: () async {
          final dateAndTime = await provider.getCurrentDateTime();
          setState(() {
            _textKey = ValueKey(dateAndTime);
          });
        },
        child: SizedBox.expand(
            child: DateAndTimeWidget(
          key: _textKey,
        )),
      ),
    );
  }
}
