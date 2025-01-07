import 'package:flutter/material.dart';
import 'change_notifier/change_notifier_screen.dart';
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
        // home: const ChangeNotifierScreen(),
        home: GetDateTimeProvider(
          provider: GetDateTime(),
          child: InheritedWidgetScreen(),
        ));
  }
}
