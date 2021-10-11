import 'package:e_shop/AppColor/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePageStylies {
  static const TextStyle appbarUpperTitleStylies = TextStyle(
    color: AppColors.baseBlackColor,
    wordSpacing: 1,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle appbarSubTitleStylies = TextStyle(
    color: Colors.grey,
    wordSpacing: 1,
    fontSize: 13.0,
  );
  static const TextStyle trandingproductNameStyle = TextStyle(
    wordSpacing: 1,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle trandingproductModelStyle = TextStyle(
    fontSize: 12.0,
    color: AppColors.baseDarkPinkColor,
  );
  static const TextStyle trandingproductPriceStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.baseWhiteColor,
  );
}
