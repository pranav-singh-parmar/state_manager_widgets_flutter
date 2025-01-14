import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'cheap_date_and_time_class.dart';
import 'expensive_date_and_time_class.dart';

class ProviderDateAndTime extends ChangeNotifier {
  late String id;
  late CheapDateAndTimeClass _cheapDateAndTimeObject;
  late StreamSubscription _cheapDateAndTimeObjectSubs;
  late ExpensiveDateAndTimeClass _expensiveDateAndTimeObject;
  late StreamSubscription _expensiveDateAndTimeClassObject;

  CheapDateAndTimeClass get cheapDateAndTimeObject => _cheapDateAndTimeObject;
  ExpensiveDateAndTimeClass get expensiveDateAndTimeObject =>
      _expensiveDateAndTimeObject;

  ProviderDateAndTime()
      : id = const Uuid().v4().toString(),
        _cheapDateAndTimeObject = CheapDateAndTimeClass(),
        _expensiveDateAndTimeObject = ExpensiveDateAndTimeClass() {
    start();
  }

  @override
  void notifyListeners() {
    id = const Uuid().v4().toString();
    super.notifyListeners();
  }

  void start() {
    _cheapDateAndTimeObjectSubs = Stream.periodic(
      const Duration(seconds: 1),
    ).listen((_) {
      _cheapDateAndTimeObject = CheapDateAndTimeClass();
      notifyListeners();
    });

    _expensiveDateAndTimeClassObject = Stream.periodic(
      const Duration(seconds: 10),
    ).listen((_) {
      _expensiveDateAndTimeObject = ExpensiveDateAndTimeClass();
      notifyListeners();
    });
  }

  void stop() {
    _cheapDateAndTimeObjectSubs.cancel();
    _expensiveDateAndTimeClassObject.cancel();
  }
}
