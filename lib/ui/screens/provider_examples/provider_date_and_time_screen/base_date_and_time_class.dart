import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseDateAndTimeClass {
  final String id;
  final String lastUpdated;

  BaseDateAndTimeClass()
      : id = Uuid().v4(),
        lastUpdated = DateTime.now().toString();

  @override
  bool operator ==(covariant BaseDateAndTimeClass other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}
