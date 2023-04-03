import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text('Lorem Ipsum',
                  style: TextStyle(
                    color: ThemeColors.primaryFontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  )),
            ),
            Container(
              height: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: const LinearProgressIndicator(
                  backgroundColor: ThemeColors.primaryprogressBar,
                  value: 0.7,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      ThemeColors.secondaryprogressBar),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
