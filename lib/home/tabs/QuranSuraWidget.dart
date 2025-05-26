import 'package:flutter/material.dart';
import 'package:islamii/quran_details/quran_details_screen.dart';

class Quransurawidget extends StatelessWidget {
  String name;
  int number;
  int index;
  Quransurawidget({required this.name,required this.number,required this.index});


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(onTap: (){
      Navigator.of(context).pushNamed(QuranDetailsScreen.routeName,
          arguments: QuranDetailsArgs(
              name: name, index: index
          ));
    },
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            color: ColorScheme.of(context).tertiary,
            width: 3,
            height: .08 * height,
          ),
          Expanded(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
