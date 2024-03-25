import 'package:flutter/material.dart';

import '../../../../Modelo/Menu.dart';
import '../../../../Pages/Values/ResponsiveApp.dart';

class MenuCard extends StatefulWidget{
  const MenuCard({ this.index = 0, this.onPress}) ;

  final int index;
  final onPress;

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  late ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Padding(
      padding: responsiveApp.edgeInsetsApp.hrzMediumEdgeInsets,
      child: InkWell(
        onTap: () => widget.onPress(),
        child: Container(
          width: 40.0,
          //height: responsiveApp.menuImageHeight,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  //padding: EdgeInsets.zero,
                  width: responsiveApp.menuImageWidth,
                  height: responsiveApp.menuImageHeight,
                  child: Image.asset(
                   // height: 300.0,
                    //width: 205.0,
                    menu[widget.index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              /*Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  //padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.0), // Puedes ajustar la opacidad y el color de fondo según tus preferencias
                  child: Text(
                    menu[widget.index].title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );



  }
}
