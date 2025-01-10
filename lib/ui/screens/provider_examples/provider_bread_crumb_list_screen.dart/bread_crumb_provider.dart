import 'dart:collection';

import 'package:flutter/material.dart';

import 'bread_crumb.dart';

class BreadCrumbProvider extends ChangeNotifier {
  final List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);

  void add({required BreadCrumb newBreadCrumb}) {
    for (final item in _items) {
      item.activate();
    }
    _items.add(newBreadCrumb);
    notifyListeners();
  }

  void reset() {
    _items.clear();
    notifyListeners();
  }
}
