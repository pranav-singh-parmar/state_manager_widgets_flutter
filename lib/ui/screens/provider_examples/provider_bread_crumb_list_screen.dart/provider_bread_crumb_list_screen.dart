import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import '../../../../utility/constants.dart';
import '../../../../utility/navigation.dart';
import '../../../widgets/theme_elevated_button.dart';
import 'bread_crumb_provider.dart';
import 'bread_crumb_widget.dart';

class ProviderBreadCrumbListScreen extends StatelessWidget {
  const ProviderBreadCrumbListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.providerBreadCrumbList,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<BreadCrumbProvider>(
            builder: (context, value, child) {
              return BreadCrumbWidget(
                breadCrumbs: value.items,
              );
            },
          ),
          //BreadCrumbWidget(breadCrumbs: []),
          ThemeElevatedButton(
            onPressed: () => Navigator.of(context)
                .navigateTo(NavigationEnum.providerAddBreadCrumb),
            child: Text(AppTexts.addNewBreadCrumb),
          ),
          ThemeElevatedButton(
            onPressed: () {
              final provider = context.read<BreadCrumbProvider>();
              provider.reset();
            },
            child: Text(AppTexts.reset),
          ),
        ],
      ),
    );
  }
}
