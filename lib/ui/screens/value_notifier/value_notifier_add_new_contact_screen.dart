import 'package:flutter/material.dart';

import '../../../utility/app_texts.dart';
import 'contact_book.dart';
import 'contact_model.dart';

class ValueNotifierNewContactScreen extends StatefulWidget {
  const ValueNotifierNewContactScreen({super.key});

  @override
  State<ValueNotifierNewContactScreen> createState() =>
      _ValueNotifierNewContactScreenState();
}

class _ValueNotifierNewContactScreenState
    extends State<ValueNotifierNewContactScreen> {
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
        title: Text(
          AppTexts.valueNotifierAddContact,
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameTEC,
          ),
          TextButton(
              onPressed: () {
                final contact = ContactModel(name: _nameTEC.text);
                ContactBook().add(contact: contact);
                Navigator.of(context).pop();
              },
              child: Text(
                AppTexts.addContact,
              ))
        ],
      ),
    );
  }
}
