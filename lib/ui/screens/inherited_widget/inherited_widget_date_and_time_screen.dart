import 'package:flutter/material.dart';

import '../../../utility/app_texts.dart';
import 'date_and_time_widget.dart';
import 'get_date_time_provider.dart';

class InheritedWidgetDateAndTimeScreen extends StatefulWidget {
  const InheritedWidgetDateAndTimeScreen({super.key});

  @override
  State<InheritedWidgetDateAndTimeScreen> createState() =>
      _InheritedWidgetDateAndTimeScreenState();
}

class _InheritedWidgetDateAndTimeScreenState
    extends State<InheritedWidgetDateAndTimeScreen> {
  ValueKey<String?> _textKey = const ValueKey(null);

  @override
  Widget build(BuildContext context) {
    final provider = GetDateTimeProvider.of(context).provider;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.inheritedWidgetDateAndTime,
        ),
      ),
      body: InkWell(
        onTap: () async {
          final dateAndTime = await provider.getCurrentDateTime();
          setState(() {
            _textKey = ValueKey(dateAndTime);
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: SizedBox.expand(
          child: Center(
            child: DateAndTimeWidget(
              key: _textKey,
            ),
          ),
        ),
      ),
    );
  }
}
