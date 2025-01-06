import 'package:flutter/material.dart';

import 'contact_model.dart';

class ContactBook extends ValueNotifier<List<ContactModel>> {
  ContactBook._sharedInstance() : super([]);
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  // final List<ContactModel> _contacts = [];

  int get length => value.length;

  void add({required ContactModel contact}) {
    value.add(contact);
    notifyListeners();
  }

  void remove({required ContactModel contact}) {
    if (value.contains(contact)) {
      value.remove(contact);
      notifyListeners();
    }
  }

  ContactModel? contact({required int atIndex}) =>
      length > atIndex ? value[atIndex] : null;
}
