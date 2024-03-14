import 'package:flutter/cupertino.dart';

bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < tableSmall;
}

bool isTablet(BuildContext context) {
  return MediaQuery.of(context).size.width >= tableSmall &&
      MediaQuery.of(context).size.width <= tabletExtraLarge;
}

bool idDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width > desktopSmall;
}

bool isMobileAndTablet(BuildContext context) {
  return MediaQuery.of(context).size.width <= tabletExtraLarge;
}

// Tamaño por pixeles
//Mobile size
double get mobileSmall => 320;

double get mobileNormal => 375;

double get mobileLarge => 414;

double get mobileExtraLarge => 480;

//table size
double get tableSmall => 600;

double get tabletNormal => 768;

double get tabletLarge => 850;

double get tabletExtraLarge => 900;

//desktop size
double get desktopSmall => 950;

double get desktopNormal => 1920;

double get desktopLarge => 3840;

double get desktopExtraLarge => 4096;
