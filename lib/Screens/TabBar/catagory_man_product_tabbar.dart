import 'package:e_shop/Widgets/catagory_product_widget.dart';
import 'package:e_shop/models/catagory_product_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CatagoryMenProductTabbar extends StatelessWidget {
  List<CategoryProductModel> catagoryproductmodel = [];
  // ignore: use_key_in_widget_constructors
  CatagoryMenProductTabbar({required this.catagoryproductmodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: catagoryproductmodel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (contex, index) {
        var data = catagoryproductmodel[index];
        return CatagoryProductWidget(
          onPressed: () {
            
          },
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
        );
      },
    );
  }
}
