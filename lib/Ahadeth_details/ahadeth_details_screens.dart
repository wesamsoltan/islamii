import 'package:flutter/material.dart';
import 'package:islamii/home/tabs/Hadeth.dart';

import '../home/style/AppStyle.dart';

class AhadethDetailsScreens extends StatelessWidget {
  static const String routeName = "ahadeth";

  const AhadethDetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppStyle.isDark
                ? "assets/images/homeDarkBackGround.png"
                : "assets/images/background.png",
          ),
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
                    style: Theme.of(context).textTheme.bodyMedium,
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
