
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Pages/Values/ResponsiveApp.dart';

class BottomColum extends StatelessWidget {
  final String heading;
  final String s1, s2, s3;


  BottomColum({required this.heading, this.s1='', this.s2='', this.s3='', required this.responsiveApp});

   ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: responsiveApp.edgeInsetsApp.onlySmallTopEdgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          createS(s1, context),
          createS(s2, context),
          createS(s3, context)
        ],
      ),
    );
  }

  createS(String s, context){
    return Padding(
        padding: responsiveApp.edgeInsetsApp.onlySmallTopEdgeInsets,
        child: Text(
          s,
          style: Theme.of(context).textTheme.bodyMedium,
      ),);
  }
}