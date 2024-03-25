
import 'package:flutter/cupertino.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../Modelo/Product.dart';
import 'ProductContainer.dart';

class ProductListView extends StatelessWidget{
  List<Product> list;
  ProductListView(this.list);
  ///AutoScrollController autoScrollController;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
         //padding: EdgeInsets.symmetric(),
      //controller: autoScrollController,
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ProductContainer(list[index]);
        },
    );
  }
}
