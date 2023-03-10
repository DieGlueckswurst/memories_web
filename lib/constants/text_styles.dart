import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const montserrat = 'Montserrat';
  static const glossAndBloom = 'Gloss_and_Bloom';

  static TextStyle glossAndBloomH1Regular = const TextStyle(
    fontFamily: glossAndBloom,
    fontSize: 50,
    height: 2,
    color: AppColors.primary,
    textBaseline: TextBaseline.ideographic,
  );

  static TextStyle glossAndBloomH2Regular = glossAndBloomH1Regular.copyWith(
    fontSize: 23,
  );

  static TextStyle glossAndBloomH3Regular = glossAndBloomH1Regular.copyWith(
    fontSize: 19,
  );

  static TextStyle montserratH1Regular = const TextStyle(
    fontFamily: montserrat,
    fontSize: 36,
  );

  static TextStyle montserratH2Regular = const TextStyle(
    fontFamily: montserrat,
    color: AppColors.primary,
    fontSize: 27,
  );

  static TextStyle montserratH2SemiBold = montserratH2Regular.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle montserratH3SemiBold = const TextStyle(
    fontFamily: montserrat,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    fontSize: 19,
  );

  static TextStyle montserratH4Regular = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 17,
    color: AppColors.primary,
  );

  static TextStyle montserratH4SemiBold = montserratH4Regular.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle montserratH5Regular = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 15,
    color: AppColors.primary,
  );

  static TextStyle montserratH5RegularCream = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 15,
    color: AppColors.secondary,
  );

  static TextStyle montserratH5Medium = const TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: montserrat,
    fontSize: 15,
    color: AppColors.primary,
  );

  static TextStyle montserratH5SemiBold = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: montserrat,
    fontSize: 15,
    color: AppColors.primary,
  );

  static TextStyle montserratH5SemiBoldCream = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: montserrat,
    color: AppColors.secondary,
    fontSize: 15,
  );

  static TextStyle montserratH6Regular = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 13,
    color: AppColors.primary,
  );

  static TextStyle montserratH6SemiBold = montserratH6Regular.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle montserratH7Regular = const TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 11,
  );

  static TextStyle montserratH7SemiBold = montserratH7Regular.copyWith(
    fontWeight: FontWeight.w600,
  );
}
