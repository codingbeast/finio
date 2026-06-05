import 'package:flutter/material.dart';
import 'package:finio/core/constants/app_sizes.dart';

class FontConstants {
  static const String fontFamily = "Poppins";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize {
  static const double s12 = AppSizes.s12;
  static const double s14 = AppSizes.s14;
  static const double s16 = AppSizes.s16;
  static const double s17 = 17.0; // s17 doesn't exist in AppSizes
  static const double s18 = AppSizes.s18;
  static const double s20 = AppSizes.s20;
}
