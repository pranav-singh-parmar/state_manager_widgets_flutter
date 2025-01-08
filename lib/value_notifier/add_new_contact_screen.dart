import 'package:flutter/material.dart';

import 'contact_book.dart';
import 'contact_model.dart';

class NewContactScreen extends StatefulWidget {
  const NewContactScreen({super.key});

  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}

class _NewContactScreenState extends State<NewContactScreen> {
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
      appBar: AppBar(),
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
              child: Text("Add"))
        ],
      ),
    );
  }
}
