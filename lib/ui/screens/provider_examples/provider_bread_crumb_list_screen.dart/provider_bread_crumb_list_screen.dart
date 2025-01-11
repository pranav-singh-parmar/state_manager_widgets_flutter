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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<BreadCrumbProvider>(
                builder: (context, value, child) {
                  return BreadCrumbWidget(
                    breadCrumbs: value.items,
                    onTap: (breadCrumb) {
                      final provider = context.read<BreadCrumbProvider>();
                      provider.select(breadCrumb: breadCrumb);
                    },
                  );
                },
              ),
            ),
            //BreadCrumbWidget(breadCrumbs: []),
            ThemeElevatedButton(
              onPressed: () {
                final provider = Provider.of<BreadCrumbProvider>(
                  context,
                  listen: false,
                );
                Navigator.of(context).navigateTo(
                  NavigationEnum.providerAddBreadCrumb,
                  parameters: provider,
                );
              },
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
      ),
    );
  }
}
