// ignore_for_file: prefer_final_fields, file_names

import 'package:flutter/material.dart';

import '../../Util/SizingInfo.dart';
import 'EdgeInsetsApp.dart';

class ResponsiveApp {
  late BuildContext _context;
  late MediaQueryData _mediaQueryData;
  late double _textScaleFactor;
  late double _scaleFactor;
  late EdgeInsetsApp edgeInsetsApp;

  ResponsiveApp(this._context) {
    _mediaQueryData = MediaQuery.of(_context);
    //ignore: deprecated_member_use
    _textScaleFactor = _mediaQueryData.textScaleFactor;
    _scaleFactor = isMobile(_context)
        ? 1
        : isTablet(_context)
            ? 1.1
            : 1.3;
    edgeInsetsApp = EdgeInsetsApp(this);
  }

  //Container
  get menuContainerHeight => setHeight(40);

  get menuContainerWidth => setWidth(60);

  get productContainerWidth => setWidth(40);

  get carouselContainerWidth => setWidth(40);

  get carouselContainerHeight => setWidth(50);

  get carouselCircleContainerWidth => setWidth(5);

  get carouselCircleContainerHeight => setHeight(5);

  get menuTabContainerHeight => setHeight(40);

  get sectionHeight => setHeight(10);

  get sectionWidth => setWidth(8);

  //Radius
  get menuRadiusWidth => setWidth(30);

  get carouselRadiusWidth => setWidth(10);

  //Images
  get menuImageHeight => setHeight(60);

  get menuImageWidth => setWidth(60);

  get tabImageHeight => setHeight(30);

  get menuHeight => setHeight(850);

  get opacityHeight => setHeight(252);

  get drawerWidth => setWidth(252);

  //Divider and Line
  get dividerVtHeight => setHeight(100);

  get dividerVtWidth => setWidth(2);

  get dividerHznHeight => setHeight(10);

  get lineHznButtonHeight => setHeight(2);

  get lineHznButtonWidth => setWidth(20);

  //Spaces
  get barSpaceWidth => setWidth(60);

  get barSpaceHeight => setHeight(80);

  //Text size
  get bodyText1 => setSp(12);

  get headline6 => setSp(15);

  get headline3 => setSp(30);

  get headline2 => setSp(40);


  //Spacing
  get letterSpacingCarouselWidth => setWidth(10);

  get letterSpacingHeaderWidth => setWidth(3);

  setWidth(int width) => width * _scaleWidth;

  setHeight(int height) => height * _scaleHeight;

  //Metodo para manejar los textos
  setSp(int fontSize) => setWidth(fontSize) * _textScaleFactor;

  get _scaleWidth => (width * _scaleFactor) / width;

  get _scaleHeight => (height * _scaleFactor) / height;

  get width => _mediaQueryData.size.width;

  get height => _mediaQueryData.size.height;
}
