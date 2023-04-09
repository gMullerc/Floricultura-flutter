import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class HeadersButtons extends StatelessWidget {
  const HeadersButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(ThemeColors.primaryColor),
                  fixedSize: MaterialStateProperty.all(const Size(120, 35)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            width: 2, color: ThemeColors.secondaryColor)),
                  )),
              child: const Text(
                "Indoor",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: ThemeColors.secondaryColor,
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                      ThemeColors.secondaryColor),
                  fixedSize: MaterialStateProperty.all(const Size(120, 35)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: ThemeColors.secondaryColor)),
                  )),
              child: const Text(
                "Outdoor",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: ThemeColors.primaryColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
