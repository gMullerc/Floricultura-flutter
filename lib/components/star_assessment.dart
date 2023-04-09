import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class StarAssessment extends StatelessWidget {
  const StarAssessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 35,
            color: ThemeColors.secondaryprogressBar,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: ThemeColors.secondaryprogressBar,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: ThemeColors.secondaryprogressBar,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: ThemeColors.secondaryprogressBar,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: ThemeColors.greyColor,
          ),
        ],
      ),
    );
  }
}
