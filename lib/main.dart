import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/Values/ResponsiveApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ResponsiveApp responsiveApp;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HORTALIZAS KILIAN JOSE",
      //Elimina la etique debug de la parte superior derecha.
      debugShowCheckedModeBanner: false,

      builder: (context, child) {
        responsiveApp = ResponsiveApp(context);

        return Theme(
            data: ThemeData(
              //backgroundColor: Colors.lightGreen[900],
              // Color de fondo
              primaryColor: Colors.black87,
              // color appBar
              // accentColor: Colors.blueGrey // propiedad de constrate con el fondo para el boton de volver arriba
              //hintColor: Colors.blueGrey,

              //Icono de appBar
              iconTheme: const IconThemeData(color: Colors.white),
              cardColor: Colors.blue,
              primaryTextTheme: getTextTheme(),
              textTheme: getTextTheme(),
              indicatorColor: Colors.blue,
              //barra de indicador de los iconos
              unselectedWidgetColor: Colors.blueGrey[300],
              //color texto tabbar e indicar si no esta seleccionado
              tabBarTheme: TabBarTheme(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey[300],
              ),
            ),
            child: HomePage());
      },
    );
  }

  getTextTheme() {
    return TextTheme(
      // headline3
      displaySmall:
          TextStyle(color: Colors.black, fontSize: responsiveApp.headline3),
      //headline6
      titleLarge:
          TextStyle(color: Colors.black, fontSize: responsiveApp.headline6),
      //bodytext1
      bodyLarge:
          TextStyle(color: Colors.black, fontSize: responsiveApp.bodyText1),
      //bodytext2
      bodyMedium:
          TextStyle(color: Colors.white, fontSize: responsiveApp.bodyText1),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headline2
      ),
    );
  }
}
