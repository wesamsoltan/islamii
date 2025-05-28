import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/quran_details/VerseWidget.dart';

import '../home/style/AppStyle.dart';

class QuranDetailsScreen extends StatefulWidget {
  static String routeName = "QuranDetailsScreen";
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    loadFile(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage( AppStyle.isDark
              ? "assets/images/homeDarkBackGround.png"
              : "assets/images/background.png",),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.name)),
        body:
           Card(
             child:  lines.isEmpty
                 ? Center(child: CircularProgressIndicator())
                 : ListView.separated(
               itemBuilder:
                   (context, index) => Versewidget(
                 verse: lines[index],
                 verseNumber: index + 1,
               ),
               separatorBuilder: (context, index) => Divider(),
               itemCount: lines.length,
             ),
           )
      ),
    );
  }

  List<String> lines = [];
  loadFile(int index) async {
    String fileContent = await rootBundle.loadString(
      "assets/files/${index + 1}.txt",
    );

    lines = fileContent.split("\n");
    setState(() {});
  }
}

class QuranDetailsArgs {
  String name;
  int index;
  QuranDetailsArgs({required this.name, required this.index});
}
