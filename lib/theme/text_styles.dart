import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static const TextStyle newsTitle = TextStyle(
    color: AppColor.black,
    fontSize: 20,
  );
  static const TextStyle newsDetailTitle = TextStyle(
    color: AppColor.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle dateTime = TextStyle(
    color: AppColor.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle detailDescription = TextStyle(
    color: AppColor.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const body1 = TextStyle(
    color: AppColor.white,
    fontSize: 96,
  );

  static TextStyle body2(double size) => TextStyle(
        color: AppColor.white,
        fontSize: size,
        fontWeight: FontWeight.w300,
      );

  static const TextStyle cmStyle = TextStyle(
    fontSize: 18,
    color: AppColor.greyText,
    height: 3.7,
  );

  static const TextStyle valueStyle = TextStyle(
    fontSize: 45,
    color: AppColor.whiteText,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 0.3,
  );

  static const TextStyle resultTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle greyTextStyle = TextStyle(
    fontSize: 28,
    color: AppColor.greyText,
  );
}
