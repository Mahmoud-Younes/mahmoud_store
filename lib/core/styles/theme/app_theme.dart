import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/styles/colors/colors_dark.dart';
import 'package:mahmoud_store/core/styles/colors/colors_light.dart';
import 'package:mahmoud_store/core/styles/theme/assets_extension.dart';
import 'package:mahmoud_store/core/styles/theme/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      MyAssets.dark,
    ], //

    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,

        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}
