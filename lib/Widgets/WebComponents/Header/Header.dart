import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Pages/Values/ResponsiveApp.dart';
import '../../../Pages/Values/StringApp.dart';
import 'HeaderButton.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  final double opacity;
  
  const Header(this.opacity, {super.key});

  @override
  State<StatefulWidget> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header>{
  late ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
   responsiveApp = ResponsiveApp(context);
   return Container(
     color: Colors.black,
     child: Padding(
       padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             titleAppBar,
             style: TextStyle(
               fontSize: responsiveApp.headline6,
               fontFamily: 'Montserrat',
               fontWeight: FontWeight.w400,
               letterSpacing: responsiveApp.letterSpacingHeaderWidth,
             ),
           ),
           Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   SizedBox(width: responsiveApp.barSpaceWidth),
                   IconButton(padding: EdgeInsets.zero,
                     icon: Icon(Icons.location_on_outlined),
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onPressed: (){
                       print(Theme.of(context).brightness);
                       launchMap();

                     },
                   )
                  /* SizedBox(width: responsiveApp.barSpaceWidth),
                   HeaderButton(1, locationStr),*/
                 ],
               ),
           ),
          //HeaderButton(2, loginStr,lineIsVisible: false,),

         ],
       ),
     ),
   );
  }
  
}void launchMap() async {
  // Ubicación en el formato "latitud, longitud"
  String location = "38.151852661191, -0.8638058162328333"; // Ejemplo: San Francisco, CA

  // Utiliza el esquema de URL para abrir la ubicación en la aplicación de mapas
  final url = "https://www.google.com/maps/search/?api=1&query=$location";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el mapa';
  }
}