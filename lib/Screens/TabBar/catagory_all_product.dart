// ignore_for_file: file_names

import 'package:e_shop/Screens/detailScreen/details_products.dart';
import 'package:e_shop/Widgets/show_all_widget.dart';
import 'package:e_shop/Widgets/singleproduct_widget.dart';
import 'package:e_shop/data/catagory_all_data.dart';
import 'package:e_shop/models/single_product_model.dart';
import 'package:flutter/material.dart';

class CatagoryAllProduct extends StatelessWidget {
  const CatagoryAllProduct({Key? key}) : super(key: key);

  Widget builderRander({required List<SingleProductModel> singleproduct}) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        itemCount: singleproduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singleproduct[index];
          return SingleProcutWidget(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsProduct(data: data),
                ),
              );
            },
            productImage: data.productImage,
            productModel: data.productModel,
            productName: data.productModel,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ShowAllWidget(leftText: 'Clothing'),
        builderRander(
          singleproduct: categoryClothData,
        ),
        ShowAllWidget(leftText: 'Shoes'),
        builderRander(singleproduct: categoryShoesData),
        ShowAllWidget(leftText: 'Accessories'),
        builderRander(singleproduct: categoryAccessoriesData),
      ],
    );
  }
}
