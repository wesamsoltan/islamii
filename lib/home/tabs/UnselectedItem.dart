import 'package:flutter/material.dart';

class Unselecteditem extends StatelessWidget {
  String title;
  Unselecteditem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
