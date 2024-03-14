
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../Pages/Values/ResponsiveApp.dart';
import '../../../Pages/Values/StringApp.dart';
import 'BottomColum.dart';
import 'InfoText.dart';

@immutable
class Footer extends StatelessWidget {
      late ResponsiveApp responsiveApp;


      Footer(this.responsiveApp);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: responsiveApp.edgeInsetsApp.allSmallEdgeInsets,
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max
            ,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /*
              BottomColum(
                heading: aboutStr,
                s1: contactusStr,
                s2: aboutStr,
                s3: knowUsStr,
                responsiveApp: responsiveApp,

              ),
              BottomColum(
                heading: helpStr,
                s1: paymentStr,
                s2: cancellationStr,
                s3: fAQStr,
                responsiveApp: responsiveApp,
              ),
              BottomColum(
                heading: socialStr,
                s1: twitterStr,
                s2: facebookStr,
                s3: instagramStr,
                responsiveApp: responsiveApp,
              ),
              Container(
                color: Colors.yellow,
                width: responsiveApp.dividerVtWidth,
                height: responsiveApp.dividerVtHeight,
              ),**/
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 /* Padding(
                    padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
                    child:  Container(
                      height: 100, // Ajusta la altura según tus necesidades
                      width: 400,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(47.0, 56.0),
                          zoom: 1.0,
                        ),
                        markers: {
                          Marker(
                            markerId: MarkerId('markerId'),
                            position: LatLng(47.0, 56.0),
                            infoWindow: InfoWindow(title: 'Dirección'),
                          ),
                        },
                      ),
                    ),
                  ),*/

                  InfoText(
                    type: adressStr,
                    text: adressDefaultStr,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
            child: Divider(
              color: Theme.of(context).primaryColor,
              height: responsiveApp.dividerHznHeight,

            )
          ),
          Text(
            copyrightStr,
            style: const TextStyle(
               color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }


}