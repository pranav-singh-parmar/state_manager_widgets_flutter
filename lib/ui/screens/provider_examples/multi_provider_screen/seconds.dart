import 'package:flutter/material.dart';

@immutable
class Seconds {
  final String value;

  Seconds() : value = DateTime.now().toIso8601String();
}
