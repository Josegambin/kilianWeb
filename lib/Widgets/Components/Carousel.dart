import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Modelo/carousel.dart';
import '../../Pages/Values/ResponsiveApp.dart';
import '../../Util/SizingInfo.dart';

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();

  int _current = 0;
  late ResponsiveApp responsiveApp;

  List<Widget> generateImageTiles() {
    return carousel
        .map(
          (element) => ClipRRect(
            borderRadius:
                BorderRadius.circular(responsiveApp.carouselRadiusWidth),
            child: Image.asset(
              element.image,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    var imageSlider = generateImageTiles();
    return Stack(
      children: [
        CarouselSlider(
          items: imageSlider,
          options: CarouselOptions(
              scrollPhysics: isMobileAndTablet(context)
                  ? const PageScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              enlargeCenterPage: true,
              autoPlay: true,


              //relacion entre el alto y el ancho de la imagen
              aspectRatio: 18/7,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < carousel.length; i++) {
                    carousel[i].isSelected = (i == index) ? true : false;
                  }
                });
              }),
          carouselController: _controller,
        ),
        Positioned.fill(
            child: Center(
          child: Text(
            carousel[_current].title,
            style: TextStyle(
              letterSpacing: responsiveApp.letterSpacingCarouselWidth,
              fontFamily: 'Electrolize',
              fontSize: responsiveApp.headline3,
            ),
          ),
        )),
        isMobileAndTablet(context)
            ? Container()
            : Positioned.fill(
                child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: responsiveApp.carouselContainerWidth,
                  height: responsiveApp.carouselContainerHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: List.generate(
                        carousel.length,
                        (index) => InkWell(
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () {
                                _controller.animateToPage(index);
                              },
                              child: Container(

                                width:
                                    responsiveApp.carouselCircleContainerWidth,
                                height:
                                    responsiveApp.carouselCircleContainerHeight,
                                margin: responsiveApp
                                    .edgeInsetsApp.allSmallEdgeInsets,
                                decoration: BoxDecoration(

                                  shape: BoxShape.circle,
                                  color: carousel[index].isSelected ? Colors.white : Colors.blueGrey,
                                  border: Border.all(
                                    color: carousel[index].isSelected ? Colors.blue : Colors.blueGrey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            )),
                  ),
                ),
              ))
      ],
    );
  }
}
