import 'package:flutter/material.dart';

class Selecteditem extends StatelessWidget {
  String title;

  Selecteditem(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodySmall),

        Icon(Icons.check, color: Theme.of(context).colorScheme.tertiary, size: 30),
      ],
    );
  }
}
