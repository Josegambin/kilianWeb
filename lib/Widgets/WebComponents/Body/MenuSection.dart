import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../Modelo/Menu.dart';
import '../../../Pages/Values/ResponsiveApp.dart';
import 'Container/MenuContainer.dart';

class MenuSection extends StatelessWidget {
  late AutoScrollController _scrollController;
  MenuSection(this._scrollController);
  late ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Column(
      children: [
       /* SectionContainer(
          title: sectionMenuTitleStr,
          subTitle: sectionMenuSubTitleStr,
        ),*/
        /*Padding(
          padding: responsiveApp.edgeInsetsApp.vrtExLargeEdgeInsets,*/
           RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              children: [
              /*  TextSpan(
                  text: historiaEmpresa,
                  style: const TextStyle(
                    fontFamily:
                        'Helvetica', // Puedes ajustar la fuente según sea necesario
                    fontWeight: FontWeight.normal,
                    color: Colors.black
                  ),
                ),*/
              ],
            ),
          ),
        /*),*/
        Padding(
          padding: responsiveApp.edgeInsetsApp.onlySmallTopEdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                menu.length,
                (index) => MenuCard(
                      index: index,
                      onPress: () => scrollIndex(index + 1),
                    )),
          ),
        )
      ],
    );
  }

  scrollIndex(index) {
    _scrollController.scrollToIndex(index);
  }
}
