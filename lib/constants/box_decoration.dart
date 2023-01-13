import 'package:flutter/material.dart';

import 'app_colors.dart';

const double defaultBorderWith = 3;
const double defaultBorderRadius = 15;

BoxDecoration primaryBoxDecoration = BoxDecoration(
  color: AppColors.secondary,
  border: Border.all(
    color: AppColors.primary,
    width: defaultBorderWith,
  ),
  borderRadius: BorderRadius.circular(defaultBorderRadius),
);
