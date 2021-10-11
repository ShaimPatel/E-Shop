import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/Screens/TabBar/catagory_all_product.dart';
import 'package:e_shop/Screens/TabBar/catagory_man_product_tabbar.dart';
import 'package:e_shop/Widgets/catagory_product_widget.dart';
import 'package:e_shop/data/catagory_all_data.dart';
import 'package:e_shop/stylies/home_page_stylies.dart';
import 'package:e_shop/svgImages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({Key? key}) : super(key: key);

  @override
  _CatagoryPageState createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  //! There are build the Appbar for Catagory Section...!
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
            "Catagory",
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
          Text('Kid\'s'),
          Text('Wonem'),
          Text('Men'),
        ],
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
            //All Place
            const CatagoryAllProduct(),
            //Kids place
            CatagoryMenProductTabbar(
              catagoryproductmodel: forKids,
            ),
            //Women place's
            CatagoryMenProductTabbar(
              catagoryproductmodel: womenCategoryData,
            ),

            // Men place
            CatagoryMenProductTabbar(
              catagoryproductmodel: menCategoryData,
            ),
          ],
        ),
      ),
    );
  }
}
