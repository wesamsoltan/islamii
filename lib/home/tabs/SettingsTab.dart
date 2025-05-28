import 'package:flutter/material.dart';
import 'package:islamii/home/tabs/LanguageBottomSheet.dart';
import 'package:islamii/home/tabs/ThemeBottomSheet.dart';

class Settingstab extends StatelessWidget {
  const Settingstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "language",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Languagebottomsheet(),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).colorScheme.tertiary),
              ),
              alignment: Alignment.center,
              child: Text("English", style: TextStyle(fontSize: 25)),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "theme",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 10),
          InkWell(onTap: (){
            showModalBottomSheet(context: context, builder: (context) => Themebottomsheet());
          },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).colorScheme.tertiary),
              ),
              alignment: Alignment.center,
              child: Text("Light", style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}
