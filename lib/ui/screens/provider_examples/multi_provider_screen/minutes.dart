import 'package:flutter/material.dart';

@immutable
class Minutes {
  final String value;

  Minutes() : value = DateTime.now().toIso8601String();
}
