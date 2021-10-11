import 'dart:ui';

import 'package:e_shop/AppColor/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DetailsScreenStylies {
  static const TextStyle companyTitlestyle = TextStyle(
    color: AppColors.baseBlackColor,
    wordSpacing: 1,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle productModelstyle = TextStyle(
    color: AppColors.baseDarkPinkColor,
    fontSize: 14,
  );
  static const TextStyle productPricestyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle productOldPricestyle = TextStyle(
    color: AppColors.baseGrey60Color,
    fontSize: 14,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle productdropDownValuestyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 12,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColors.baseWhiteColor,
    fontSize: 20,
  );
  static const TextStyle descriptionStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 18,
    letterSpacing: 1,
    fontWeight: FontWeight.w600,
  );
  static const sizeGuideStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 18,
    letterSpacing: 1,
  );
  static const youmaybeStyles = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const showAllStyles = TextStyle(
    color: AppColors.baseDarkPinkColor,
    fontSize: 18,
  );
}
