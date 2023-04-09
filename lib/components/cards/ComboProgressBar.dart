import 'package:floricultura/components/plants_card.dart';
import 'package:floricultura/components/price_circle.dart';
import 'package:floricultura/components/progress_bar.dart';
import 'package:flutter/material.dart';

class ComboProgressBar extends StatelessWidget {
  const ComboProgressBar({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 110,
                child: Column(
                  children: const [
                    ProgressBar(),
                    ProgressBar(),
                    ProgressBar(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
              height: 65,
              width: 65,
              child: PriceCircle(
                price: price,
              ),
            )
          ],
        )
      ],
    );
  }
}
