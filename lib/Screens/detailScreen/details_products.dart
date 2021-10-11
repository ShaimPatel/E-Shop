import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/Widgets/details_drop_down.dart';
import 'package:e_shop/Widgets/singleproduct_widget.dart';
import 'package:e_shop/data/deatils_screen_data.dart';
import 'package:e_shop/models/single_product_model.dart';
import 'package:e_shop/stylies/details_screen_stylies.dart';
import 'package:e_shop/svgImages/svg_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsProduct extends StatefulWidget {
  final SingleProductModel data;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailsProduct({required this.data});

  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  // ignore: prefer_typing_uninitialized_variables
  var _reatingController;
  // ignore: prefer_typing_uninitialized_variables
  var _sizeController;

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.baseBlackColor,
        ),
      ),
      title: const Text(
        'Reebok',
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.heart,
            color: AppColors.baseBlackColor,
            width: 35,
            semanticsLabel: "fave",
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.upload,
            color: AppColors.baseBlackColor,
            width: 35,
            semanticsLabel: "upload",
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/Logo.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName.toString(),
                  style: DetailsScreenStylies.companyTitlestyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productModel.toString(),
                  style: DetailsScreenStylies.productModelstyle,
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailsScreenStylies.productPricestyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailsScreenStylies.productOldPricestyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.data.productImage.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(
                          widget.data.productSecondImage.toString(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(
                          widget.data.productThirdImage.toString(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(
                          widget.data.productFourImage.toString(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DetailsDropDown(
                  hintText: 'Color',
                  list: const ['red', 'blue', 'white', 'black', 'pink'],
                  ratingControl: _reatingController,
                ),
              ),
              Expanded(
                child: DetailsDropDown(
                  hintText: 'Size',
                  list: const ['23', '25', '13', '10', '19'],
                  ratingControl: _sizeController,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: () {},
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Add to Cart',
                style: DetailsScreenStylies.buttonTextStyle,
              ),
            ),
          ),
          ExpansionTile(
            title: const Text('Description',
                style: DetailsScreenStylies.descriptionStyle),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    const Text(
                      "While I am passing value from home page to source page it shows an error: The argument type 'Future' can't be assigned to the parameter type 'void Function()'. (argument_type_not_assignable at [strong text] lib\thome.dart:15",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tMaterial",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "84%\tnylon",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "16%\t elastance",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\t Size",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "2XS, \tXS ,\tS , \tM , \tL ",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tGender",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Women",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tProvince",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Lucknow",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tCountry",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "India",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 55,
                          elevation: 0,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: AppColors.baseGrey50Color,
                              )),
                          child: const Text(
                            'Size guide',
                            style: DetailsScreenStylies.sizeGuideStyle,
                          ),
                          minWidth: double.infinity,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const ListTile(
            leading: Text(
              "You may also like",
              style: DetailsScreenStylies.youmaybeStyles,
            ),
            trailing: Text(
              'Show All',
              style: DetailsScreenStylies.showAllStyles,
            ),
          ),
          SizedBox(
            height: 240,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: true,
              itemCount: detailScreenData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                var data = detailScreenData[index];
                return SingleProcutWidget(
                  onPressed: () {},
                  productImage: data.productImage,
                  productModel: data.productModel,
                  productName: data.productName,
                  productOldPrice: data.productOldPrice,
                  productPrice: data.productPrice,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
