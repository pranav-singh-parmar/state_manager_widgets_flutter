import 'dart:collection';

import 'package:flutter/material.dart';

import 'bread_crumb.dart';

typedef BreadCumTapped = void Function(BreadCrumb);

class BreadCrumbWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;
  final BreadCumTapped onTap;
  const BreadCrumbWidget({
    super.key,
    required this.breadCrumbs,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map(
        (breadCrump) {
          return GestureDetector(
            onTap: () => onTap(breadCrump),
            child: Text(
              breadCrump.title,
              style: TextStyle(
                color: breadCrump.isActive ? Colors.blue : Colors.black,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
