import 'package:flutter/material.dart';

import 'add_new_contact_screen.dart';
import 'contact_book.dart';

class ChangeNotifierScreen extends StatelessWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
        appBar: AppBar(),
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NewContactScreen()));
          },
        ));
  }
}
