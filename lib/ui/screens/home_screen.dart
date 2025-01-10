import 'package:flutter/material.dart';

import '../../utility/app_texts.dart';
import '../../utility/constants.dart';
import '../../utility/navigation.dart';
import '../widgets/theme_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<NavigationEnum> _navigationList = [
    NavigationEnum.valueNotifierContactList,
    NavigationEnum.inheritedWidgetDateAndTime,
    NavigationEnum.inheritedModelColorUpdate,
    NavigationEnum.inheritedNotifier,
    NavigationEnum.providerExamples,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.home),
      ),
      body: Center(
          child: ListView.builder(
        shrinkWrap: true,
        itemCount: _navigationList.length,
        itemBuilder: _listElement,
      )),
    );
  }

  Widget _listElement(BuildContext context, int index) {
    final navigationEnum = _navigationList[index];
    return Center(
      child: ThemeElevatedButton(
          onPressed: () {
            // Navigator.push(context, route)
            Navigator.of(context).navigateTo(navigationEnum);
          },
          title: getTitleFor(navigationEnum)),
    );
  }

  String getTitleFor(NavigationEnum navigationEnum) {
    switch (navigationEnum) {
      case NavigationEnum.valueNotifierContactList:
        return AppTexts.valueNotifierContactList;
      case NavigationEnum.inheritedWidgetDateAndTime:
        return AppTexts.inheritedWidgetDateAndTime;
      case NavigationEnum.inheritedModelColorUpdate:
        return AppTexts.inheritedModelColorUpdate;
      case NavigationEnum.inheritedNotifier:
        return AppTexts.inheritedNotifierAndChangeNotifierSliderDcreen;
      case NavigationEnum.providerExamples:
        return AppTexts.providerExamplesList;
      default:
        return "";
    }
  }
}
