import 'package:flutter/material.dart';

import 'SelectedItem.dart';
import 'UnselectedItem.dart';

class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Selecteditem("Light"), SizedBox(height: 20),Unselecteditem("Dark")],
      ),
    );
  }
}
