import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/stylies/catagory_sreen_stylies.dart';
import 'package:flutter/material.dart';

class CatagoryProductWidget extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productModel;
  final Function onPressed;

  // ignore: use_key_in_widget_constructors
  const CatagoryProductWidget(
      {this.productImage,
      this.productName,
      this.productModel,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 20, bottom: 30),
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(productImage!)),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName!,
                  style: CatagoryScreenWidgetStylies.catagoryProductNameStylies,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  productModel!,
                  style:
                      CatagoryScreenWidgetStylies.catagoryProductModelStylies,
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => onPressed(),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.baseBlackColor,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
