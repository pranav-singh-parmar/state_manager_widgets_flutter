import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'minutes.dart';

class MinutesWidget extends StatelessWidget {
  const MinutesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<Minutes>();
    return Container(
      height: 100,
      color: Colors.blue,
      child: Text(seconds.value),
    );
  }
}
