import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/Screens/detailScreen/details_products.dart';
import 'package:e_shop/Screens/TabBar/tab_bar_data.dart';
import 'package:e_shop/Widgets/show_all_widget.dart';
import 'package:e_shop/Widgets/singleproduct_widget.dart';
import 'package:e_shop/data/home_page_data.dart';
import 'package:e_shop/stylies/home_page_stylies.dart';
import 'package:e_shop/svgImages/svg_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.person,
        size: 30,
        color: AppColors.baseBlackColor,
      ),
      title: Column(
        children: const [
          Text(
            "Welcome",
            style: HomePageStylies.appbarUpperTitleStylies,
          ),
          Text(
            "Shopping",
            style: HomePageStylies.appbarSubTitleStylies,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filtter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
        )
      ],
      bottom: const TabBar(
        indicatorColor: AppColors.baseDarkOrangeColor,
        indicatorWeight: 2.0,
        automaticIndicatorColorAdjustment: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.rectangle,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text('Shoes'),
          Text('Accesories'),
        ],
      ),
    );
  }

//! There Are build Advertisment section..
  Widget buildAdvertismentPlace() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(),
    );
  }

//! There Are Tranding Product
  Widget buildTrandingProduct({
    required String productImage,
    required String productName,
    required String productModel,
    required double productPrice,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      height: 85,
      child: Card(
        elevation: 1.0,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Material(
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.network(
                    productImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: HomePageStylies.trandingproductNameStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      productModel,
                      style: HomePageStylies.trandingproductModelStyle,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MaterialButton(
                  color: AppColors.baseLightPinkColor,
                  height: 45,
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                    side: BorderSide.none,
                  ),
                  child: Text('\$ $productPrice',
                      style: HomePageStylies.trandingproductPriceStyle),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  height: 190,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CarouselSlider(
                          items: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1607083206869-4c7672e72a8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1526178613552-2b45c6c302f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80')),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80')),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1573855619003-97b4799dcd8b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80')),
                              ),
                            )
                          ],
                          options: CarouselOptions(
                            height: 180,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ShowAllWidget(leftText: "New Arrival"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return SingleProcutWidget(
                        onPressed: () {
                          // print('Working');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsProduct(data: data),
                            ),
                          );
                        },
                        productImage: data.productImage,
                        productModel: data.productModel,
                        productName: data.productName,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    },
                  ),
                ),
                const Divider(
                  indent: 15,
                  endIndent: 16,
                ),
                ShowAllWidget(leftText: 'What\'s Tranding'),
                buildTrandingProduct(
                  productImage:
                      'https://image.freepik.com/free-photo/pretty-young-stylish-sexy-woman-pink-luxury-dress-summer-fashion-trend-chic-style-sunglasses-blue-studio-background-shopping-holding-paper-bags-talking-mobile-phone-shopaholic_285396-2957.jpg',
                  productModel: 'BackPack',
                  productName: 'VFA Boost',
                  productPrice: 21.3,
                ),
                buildTrandingProduct(
                  productImage:
                      'https://as2.ftcdn.net/v2/jpg/02/88/65/45/500_F_288654557_h0hiDv7cdEkdfKOIeF9wrSk4P6YH4ZMc.jpg',
                  productModel: 'Shoes',
                  productName: 'Red Shoees...',
                  productPrice: 21.3,
                ),
                buildTrandingProduct(
                  productImage:
                      'https://as2.ftcdn.net/v2/jpg/02/75/48/13/500_F_275481368_2m0XFZnCsor1ikfk7aF40ZoyUNnovL5o.jpg',
                  productModel: 'Apple Phone',
                  productName: 'Iphone 12',
                  productPrice: 121.3,
                ),
                const Divider(
                  indent: 15,
                  endIndent: 16,
                ),
                ShowAllWidget(leftText: 'Histroy'),
                SizedBox(
                  height: 240,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
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
                        productName: data.productName,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    },
                  ),
                )
              ],
            ),
            TabBarData(
              productdata: colothsData,
            ),
            TabBarData(
              productdata: shoesData,
            ),
            TabBarData(
              productdata: accessoriesData,
            ),
          ],
        ),
      ),
    );
  }
}
