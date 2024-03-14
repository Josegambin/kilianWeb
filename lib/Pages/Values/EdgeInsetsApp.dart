import 'package:flutter/cupertino.dart';

import 'ResponsiveApp.dart';

class EdgeInsetsApp {
  late EdgeInsets allSmallEdgeInsets;
  late EdgeInsets allMediumEdgeInsets;
  late EdgeInsets allLargeEdgeInsets;
  late EdgeInsets allExLargeEdgeInsets;

  //Vertical
  late EdgeInsets vrtSmallEdgeInsets;
  late EdgeInsets vrtMediumEdgeInsets;
  late EdgeInsets vrtLargeEdgeInsets;
  late EdgeInsets vrtExLargeEdgeInsets;

  //Horizontal
  late EdgeInsets hrzMediumEdgeInsets;
  late EdgeInsets hrzSmalEdgeInsets;
  late EdgeInsets hrzLargeEdgeInsets;

  //Solo derecha, izquierda, arriba y abajo SMALL
  late EdgeInsets onlySmallTopEdgeInsets;
  late EdgeInsets onlySmallBottomEdgeInsets;
  late EdgeInsets onlySmallRightEdgeInsets;
  late EdgeInsets onlySmallLeftEdgeInsets;

  //Solo derecha, izquierda, arriba y abajo MEDIUM
  late EdgeInsets onlyMediumTopEdgeInsets;
  late EdgeInsets onlyMediumBottomEdgeInsets;
  late EdgeInsets onlyMediumRightEdgeInsets;
  late EdgeInsets onlyMediumLeftEdgeInsets;

  //Solo derecha, izquierda, arriba y abajo LARGE
  late EdgeInsets onlyLargeTopEdgeInsets;
  late EdgeInsets onlyLargeBottomEdgeInsets;
  late EdgeInsets onlyLargeRightEdgeInsets;
  late EdgeInsets onlyLargeLeftEdgeInsets;

  late EdgeInsets onlyExLargeTopEdgeInsets;

  final ResponsiveApp _dimensApp;

  EdgeInsetsApp(this._dimensApp) {
    //Paddding
    double _smalHeightPadding = _dimensApp.setHeight(4);
    double _smallWidthPadding = _dimensApp.setWidth(4);

    double _mediumHeightPadding = _dimensApp.setHeight(10);
    double _mediumWidthPaddin = _dimensApp.setWidth(10);

    double _largeHeightPadding = _dimensApp.setHeight(20);
    double _largeWidthPadding = _dimensApp.setWidth(20);

    double _largeExHeightPadding = _dimensApp.setHeight(40);
    double _largeExWidthPadding = _dimensApp.setWidth(40);

    //Todo
    allSmallEdgeInsets = EdgeInsets.symmetric(
        vertical: _smalHeightPadding, horizontal: _smallWidthPadding);

    allMediumEdgeInsets = EdgeInsets.symmetric(
        vertical: _mediumHeightPadding, horizontal: _mediumWidthPaddin);

    allLargeEdgeInsets = EdgeInsets.symmetric(
        vertical: _largeHeightPadding, horizontal: _largeWidthPadding);

    allExLargeEdgeInsets = EdgeInsets.symmetric(
        vertical: _largeExHeightPadding, horizontal: _largeExWidthPadding);

    //Vertical
    vrtSmallEdgeInsets = EdgeInsets.symmetric(vertical: _smalHeightPadding);
    vrtMediumEdgeInsets = EdgeInsets.symmetric(vertical: _mediumHeightPadding);
    vrtLargeEdgeInsets = EdgeInsets.symmetric(vertical: _largeHeightPadding);
    vrtExLargeEdgeInsets =
        EdgeInsets.symmetric(vertical: _largeExHeightPadding);

    //Horizontal
    hrzSmalEdgeInsets = EdgeInsets.symmetric(horizontal: _smallWidthPadding);
    hrzMediumEdgeInsets = EdgeInsets.symmetric(horizontal: _mediumWidthPaddin);
    hrzLargeEdgeInsets = EdgeInsets.symmetric(horizontal: _largeWidthPadding);

    //Solo derecha, izquierda, arriba y abajo SMALL
    onlySmallTopEdgeInsets = EdgeInsets.only(top: _smalHeightPadding);
    onlySmallBottomEdgeInsets = EdgeInsets.only(bottom: _smalHeightPadding);
    onlySmallRightEdgeInsets = EdgeInsets.only(right: _smallWidthPadding);
    onlySmallLeftEdgeInsets = EdgeInsets.only(left: _smallWidthPadding);

    //Solo derecha, izquierda, arriba y abajo MEDIUM
    onlyMediumTopEdgeInsets = EdgeInsets.only(top: _mediumHeightPadding);
    onlyMediumBottomEdgeInsets = EdgeInsets.only(bottom: _mediumHeightPadding);
    onlyMediumRightEdgeInsets = EdgeInsets.only(right: _mediumWidthPaddin);
    onlyMediumLeftEdgeInsets = EdgeInsets.only(left: _mediumWidthPaddin);

    //Solo derecha, izquierda, arriba y abajo LARGE
    onlyLargeTopEdgeInsets = EdgeInsets.only(top: _largeHeightPadding);
    onlyLargeBottomEdgeInsets = EdgeInsets.only(bottom: _largeHeightPadding);
    onlyLargeRightEdgeInsets = EdgeInsets.only(right: _largeWidthPadding);
    onlyLargeLeftEdgeInsets = EdgeInsets.only(left: _largeWidthPadding);

    //Solo derecha, izquierda, arriba y abajo ExxLarge
    onlyExLargeTopEdgeInsets = EdgeInsets.only(top: _largeExHeightPadding);
  }
}
