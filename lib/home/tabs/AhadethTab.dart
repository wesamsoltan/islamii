import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/Ahadeth_details/ahadeth_details_screens.dart';
import 'package:islamii/home/tabs/Hadeth.dart';

class Ahadethtab extends StatefulWidget {
  @override
  State<Ahadethtab> createState() => _AhadethtabState();
}

class _AhadethtabState extends State<Ahadethtab> {
  @override
  Widget build(BuildContext context) {
    print("rebuild");

    return ahadethList.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Column(
          children: [
            Expanded(child: Image.asset("assets/images/ahadeth_image.png")),
            Divider(),
            Text(
              "ahadeth",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Divider(),
            Expanded(
              flex: 2,
              child: ListView.separated(
                itemBuilder:
                    (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AhadethDetailsScreens.routeName,arguments: ahadethList[index]);
                      },
                      child: Text(
                        ahadethList[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: ahadethList.length,
              ),
            ),
          ],
        );
  }

  List<Hadeth> ahadethList = [];

  readAhadethFile() async {
    String fileContent = await rootBundle.loadString(
      "assets/files/ahadeth.txt",
    );
    List<String> ahadethFileData = fileContent.split("#");
    for (int i = 0; i < ahadethFileData.length; i++) {
      List<String> hadethLines = ahadethFileData[i].trim().split("\n");
      String haethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join(" ");
      ahadethList.add(Hadeth(haethTitle, hadethContent));
      print(hadethContent);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    readAhadethFile();
  }
}
