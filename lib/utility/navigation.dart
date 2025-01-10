import 'package:flutter/material.dart';

import '../ui/screens/inherited_model_example/inherited_model_color_update_screen.dart';
import '../ui/screens/inherited_notifier_and_change_notifier/inherited_notifier_and_change_notifier_slider_screen.dart';
import '../ui/screens/inherited_widget/get_date_time.dart';
import '../ui/screens/inherited_widget/get_date_time_provider.dart';
import '../ui/screens/inherited_widget/inherited_widget_date_and_time_screen.dart';
import '../ui/screens/provider_examples/bread_crumb_provider_screen.dart';
import '../ui/screens/provider_examples/provider_example_list_screen.dart';
import '../ui/screens/value_notifier/value_notifier_add_new_contact_screen.dart';
import '../ui/screens/value_notifier/value_notifier_contact_list_screen.dart';
import 'constants.dart' show NavigationEnum;

extension NavigationEnumExtension on NavigatorState {
  void navigateTo(NavigationEnum navigationEnum, {dynamic parameters}) {
    Widget? screen;
    switch (navigationEnum) {
      case NavigationEnum.valueNotifierContactList:
        screen = const ValueNotifierListScreen();
        break;
      case NavigationEnum.valueNotifierNewContact:
        screen = const ValueNotifierNewContactScreen();
        break;
      case NavigationEnum.inheritedWidgetDateAndTime:
        screen = GetDateTimeProvider(
          provider: GetDateTime(),
          child: const InheritedWidgetDateAndTimeScreen(),
        );
        break;
      case NavigationEnum.inheritedModelColorUpdate:
        screen = const InheritedModelColorUpdateScreen();
        break;
      case NavigationEnum.inheritedNotifier:
        screen = InheritedNotifierAndChangeNotifierSliderScreen();
        break;
      case NavigationEnum.providerExamples:
        screen = ProviderExampleListScreen();
        break;
      case NavigationEnum.breadCrumbProvider:
        screen = const BreacCrumbProviderScreen();
        break;
    }

    push(
      MaterialPageRoute(builder: (context) => screen!),
    );
  }
}
