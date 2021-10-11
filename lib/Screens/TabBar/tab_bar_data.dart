import 'package:e_shop/Widgets/singleproduct_widget.dart';
import 'package:e_shop/data/home_page_data.dart';
import 'package:e_shop/models/single_product_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabBarData extends StatelessWidget {
  late List<SingleProductModel> productdata;
  TabBarData({Key? key, required this.productdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: colothsData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = productdata[index];
        return SingleProcutWidget(
          onPressed: () {},
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}
