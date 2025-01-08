import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'get_date_time.dart';

class GetDateTimeProvider extends InheritedWidget {
  final GetDateTime provider;
  final String uuid;

  GetDateTimeProvider({
    super.key,
    required this.provider,
    required super.child,
  }) : uuid = Uuid().v4();

  @override
  bool updateShouldNotify(covariant GetDateTimeProvider oldWidget) =>
      uuid != oldWidget.uuid;

  static GetDateTimeProvider of(BuildContext context) =>
      context.getInheritedWidgetOfExactType<GetDateTimeProvider>()!;
}
