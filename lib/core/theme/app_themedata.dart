import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'Cairo',
  // textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Cairo')),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Cairo'),
  ),
);
