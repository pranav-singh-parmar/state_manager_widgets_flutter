import 'package:flutter/material.dart';
import 'inherited_notifier_and_change_notifier/inherited_notifier_and_change_notifier_screen.dart';
import 'value_notifier/value_notifier_screen.dart';
import 'inherited_model.dart/inherited_model_screen.dart';
import 'inherited_widget/get_date_time.dart';
import 'inherited_widget/get_date_time_provider.dart';
import 'inherited_widget/inherited_widget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ValueNotifierScreen(),
      // home: GetDateTimeProvider(
      //   provider: GetDateTime(),
      //   child: InheritedWidgetScreen(),
      // )
      // home: InheritedModelScreen()
      //home: InheritedNotifierAndChangeNotifierScreen(),
    );
  }
}
