import 'package:flutter/material.dart';

import '../../../utility/app_texts.dart';
import '../../../utility/constants.dart';
import '../../../utility/navigation.dart';
import 'contact_book.dart';

class ValueNotifierListScreen extends StatelessWidget {
  const ValueNotifierListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppTexts.valueNotifierContactList,
          ),
        ),
        body: ValueListenableBuilder(
            valueListenable: contactBook,
            builder: (context, value, child) {
              final contacts = value;
              return ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return Dismissible(
                        onDismissed: (direction) =>
                            contactBook.remove(contact: contact),
                        key: ValueKey(contact.id),
                        child: Material(
                            color: Colors.white,
                            elevation: 5,
                            child: ListTile(title: Text(contact.name))));
                  });
            }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .navigateTo(NavigationEnum.valueNotifierNewContact);
          },
        ));
  }
}
