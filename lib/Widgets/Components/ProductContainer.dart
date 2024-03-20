
import 'package:flutter/material.dart';

import '../../Modelo/Product.dart';
import '../../Pages/Values/ResponsiveApp.dart';

@immutable
class ProductContainer extends StatelessWidget {
  Product product;

  ProductContainer(this.product);

  late ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(top:30.0,bottom: 1.0), // Ajusta según tus necesidades
        child: Container(
          //height: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.0),
            /*image: DecorationImage(
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage(product.image),
              
              //fit: BoxFit.cover,
            ),*/
          ),
          child: Center(
            // Centrar el contenido verticalmente
            child: Container(
              padding: EdgeInsets.all(50.0), // Ajusta el padding según sea necesario
              child: Text(

                product.text,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }





}
