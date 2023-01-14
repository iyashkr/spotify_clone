import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class YourLibray extends StatelessWidget {
  const YourLibray({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'YourLibray',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
