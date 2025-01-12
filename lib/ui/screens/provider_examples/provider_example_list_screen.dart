import 'package:flutter/material.dart';

import '../../../utility/app_texts.dart';
import '../../../utility/constants.dart';
import '../../../utility/navigation.dart';
import '../../widgets/theme_elevated_button.dart';

class ProviderExampleListScreen extends StatelessWidget {
  ProviderExampleListScreen({super.key});

  final List<NavigationEnum> _navigationList = [
    NavigationEnum.providerBreadCrumbList,
    NavigationEnum.providerDateAndTime
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.providerExamplesList),
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
            Navigator.of(context).navigateTo(navigationEnum);
          },
          title: getTitleFor(navigationEnum)),
    );
  }

  String getTitleFor(NavigationEnum navigationEnum) {
    switch (navigationEnum) {
      case NavigationEnum.providerBreadCrumbList:
        return AppTexts.providerBreadCrumbList;
      case NavigationEnum.providerDateAndTime:
        return AppTexts.providerDateAndTime;
      default:
        return "";
    }
  }
}
