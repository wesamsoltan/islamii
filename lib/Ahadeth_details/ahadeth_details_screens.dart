import 'package:flutter/material.dart';
import 'package:islamii/home/tabs/Hadeth.dart';

class AhadethDetailsScreens extends StatelessWidget {
  static const String routeName = "ahadeth";
  const AhadethDetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Text(
                    args.contant,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
