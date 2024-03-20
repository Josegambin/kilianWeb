import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/Values/ResponsiveApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
      //title: "HORTALIZAS KILIAN JOSE",
      //Elimina la etiqueta de depuración de la parte superior derecha.
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        responsiveApp = ResponsiveApp(context);

        return Theme(
          data: ThemeData(
            primaryColor: Colors.black87,
            iconTheme: const IconThemeData(color: Colors.white),
            cardColor: Colors.blue,
            primaryTextTheme: getTextTheme(),
            textTheme: getTextTheme(),
            indicatorColor: Colors.blue,
            unselectedWidgetColor: Colors.blueGrey[300],
            tabBarTheme: TabBarTheme(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey[300],
            ),
          ),
          child: Scaffold(

            body: RefreshIndicator(
              onRefresh: _refreshData,
              child: HomePage(),
            ),
          ),
        );
      },
    );
  }

  Future<void> _refreshData() async {
    // Aquí puedes realizar las operaciones de actualización de datos, como hacer llamadas a la API, etc.
    // Espera hasta que la actualización esté completa (si es asíncrona).
  }

  getTextTheme() {
    return TextTheme(
      displaySmall:
      TextStyle(color: Colors.black, fontSize: responsiveApp.headline3),
      titleLarge:
      TextStyle(color: Colors.black, fontSize: responsiveApp.headline6),
      bodyLarge:
      TextStyle(color: Colors.black, fontSize: responsiveApp.bodyText1),
      bodyMedium:
      TextStyle(color: Colors.white, fontSize: responsiveApp.bodyText1),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headline2,
      ),
    );
  }
}
