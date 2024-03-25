import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_kilian/Widgets/WebComponents/Body/SectionList.dart';

import '../Util/Keys.dart';
import '../Util/SizingInfo.dart';
import '../Widgets/Components/Carousel.dart';
import '../Widgets/WebComponents/Footer/Footer.dart';
import '../Widgets/WebComponents/Header/Header.dart';
import 'Values/ResponsiveApp.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  late AutoScrollController autoScrollController;
  bool _isVisible = false;
  late ResponsiveApp responsiveApp;

  _scrollListener() {
    setState(() {
      _scrollPosition = autoScrollController.position.pixels;
    });
  }

  @override
  void initState() {
    autoScrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery
                .of(context)
                .padding
                .bottom),
        axis: Axis.vertical);
    autoScrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    _opacity = _scrollPosition < responsiveApp.opacityHeight
        ? _scrollPosition / responsiveApp.opacityHeight
        : 1;

    _isVisible = _scrollPosition >= responsiveApp.menuHeight;
    return Scaffold(
      key: homeScaffoldKey,
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      floatingActionButton: Visibility(
        visible: _isVisible,
        child: FloatingActionButton(
          onPressed: () => {autoScrollController.scrollToIndex(0)},
          child: const Icon(Icons.arrow_upward),
        ),
      ),
      appBar: Header(_opacity),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondoWeb.jpg'),
            // Reemplaza 'tu_imagen.jpg' con la ruta de tu imagen
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.greenAccent.withOpacity(0.9), // Ajusta la opacidad de la imagen (0.0 a 1.0)
              BlendMode.luminosity,
            ),
          ),
          color: Color.fromRGBO(205, 255, 255, 1.0), // Ajusta el último valor (0.5) para cambiar la opacidad (0.0 a 1.0)

        ),
        child: ListView(controller: autoScrollController, children: [
          Carousel(),
          SectionListView(autoScrollController, responsiveApp),
          // ... Otros widgets
          isMobileAndTablet(context) ? const SizedBox.shrink() : Footer(
              responsiveApp),
        ]),
      ),
    );
  }
}
