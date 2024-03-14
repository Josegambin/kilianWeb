import 'package:flutter/material.dart';

import '../../../../Pages/Values/ResponsiveApp.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color color;
  late final ResponsiveApp responsiveApp;

  SectionContainer({ required this.title,  required this.subTitle,  this.color = Colors.blue});


 @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return SizedBox(
      width: responsiveApp.width,
      child: Row(
        children: [
          Container(
            margin: responsiveApp.edgeInsetsApp.onlyMediumRightEdgeInsets,
            padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
            width: responsiveApp.sectionWidth,
           // height: responsiveApp.sectionHeight,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: Theme.of(context)
                    .textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          )
        ],
      ),
    );
  }

}