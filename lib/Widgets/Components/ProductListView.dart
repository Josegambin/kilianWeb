
import 'package:flutter/cupertino.dart';

import '../../Modelo/Product.dart';
import 'ProductContainer.dart';

class ProductListView extends StatelessWidget{
  List<Product> list;
  ProductListView(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
         //padding: EdgeInsets.symmetric(),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ProductContainer(list[index]);
        },
    );
  }
}
