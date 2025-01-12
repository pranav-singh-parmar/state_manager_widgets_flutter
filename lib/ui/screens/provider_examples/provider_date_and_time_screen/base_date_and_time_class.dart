import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseDateAndTimeProvider {
  final String id;
  final String lastUpdated;

  BaseDateAndTimeProvider()
      : id = Uuid().v4(),
        lastUpdated = DateTime.now().toString();

  @override
  bool operator ==(covariant BaseDateAndTimeProvider other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}
