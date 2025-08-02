import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';

ThemeData getApptheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManager.primaryColor,
    // appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorManager.backGroundColor,
      elevation: 0,
      titleTextStyle: StylesManager.textStyle20(ColorManager.primaryColor),
    ),

    textTheme: TextTheme(
      bodyLarge: StylesManager.textStyle17(ColorManager.primaryColor),
    ),
  );
}
