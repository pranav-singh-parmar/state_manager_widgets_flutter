import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utility/app_texts.dart';
import '../../../widgets/theme_elevated_button.dart';
import 'bread_crumb.dart';
import 'bread_crumb_provider.dart';

class ProviderAddBreadCrumbScreen extends StatefulWidget {
  const ProviderAddBreadCrumbScreen({super.key});

  @override
  State<ProviderAddBreadCrumbScreen> createState() =>
      _ProviderAddBreadCrumbScreenState();
}

class _ProviderAddBreadCrumbScreenState
    extends State<ProviderAddBreadCrumbScreen> {
  late TextEditingController _nameTEC;

  @override
  void initState() {
    _nameTEC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.providerAddBreadCrumb),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameTEC,
              decoration: InputDecoration(
                hintText: "Enter new bread crumb here...",
              ),
            ),
          ),
          ThemeElevatedButton(
            onPressed: () {
              final text = _nameTEC.text;
              if (text.isNotEmpty) {
                final breadCrumb = BreadCrumb(
                  isAcive: false,
                  name: text,
                );
                final provider = context.read<BreadCrumbProvider>();
                provider.add(
                  newBreadCrumb: breadCrumb,
                );
                Navigator.of(context).pop();
              }
            },
            child: Text(AppTexts.addNewBreadCrumb),
          )
        ],
      ),
    );
  }
}
