import 'package:flutter/material.dart';
import 'package:islamii/home/style/AppStyle.dart';
import 'package:islamii/home/tabs/AhadethTab.dart';
import 'package:islamii/home/tabs/QuranTabs.dart';
import 'package:islamii/home/tabs/RadioTab.dart';
import 'package:islamii/home/tabs/SettingsTab.dart';
import 'package:islamii/home/tabs/TasbehTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    Qurantabs(),
    Ahadethtab(),
    Radiotab(),
    Tasbehtab(),
    Settingstab(),
  ];

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.islami)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: (ImageIcon(AssetImage("assets/images/moshaf_blue.png"))),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: (ImageIcon(AssetImage("assets/images/ahadeth_icon.png"))),
              label: AppLocalizations.of(context)!.ahadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: (ImageIcon(AssetImage("assets/images/sebha_icon.png"))),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: (ImageIcon(AssetImage("assets/images/radio_icon.png"))),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.settings),
              label: "settings",
            ),
          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
