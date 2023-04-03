import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PriceCircle extends StatelessWidget {
  const PriceCircle({Key? key, required this.price}) : super(key: key);

  final String price;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ThemeColors.primaryColor,
      child: Text(
        "\$${price}",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: ThemeColors.secondaryColor),
      ),
    );
  }
}
