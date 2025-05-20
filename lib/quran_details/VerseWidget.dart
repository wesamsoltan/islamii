import 'package:flutter/material.dart';

class Versewidget extends StatelessWidget {
  final String verse;
  final int verseNumber;
  const Versewidget({required this.verse, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$verse($verseNumber)",
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      textAlign: TextAlign.center,textDirection: TextDirection.rtl,
    );
  }
}
