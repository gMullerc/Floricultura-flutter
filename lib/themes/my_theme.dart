import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
    primaryColor: const Color.fromRGBO(155, 225, 222, 1),
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: ThemeColors.materialPrimaryColors),
    fontFamily: "Montserrat");
