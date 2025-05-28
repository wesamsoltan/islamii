import 'package:flutter/material.dart';
import 'package:islamii/home/tabs/SelectedItem.dart';
import 'package:islamii/home/tabs/UnselectedItem.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Selecteditem("English"), SizedBox(height: 20),Unselecteditem("العربية")],
      ),
    );
  }
}
