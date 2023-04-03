import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.nome,
    required this.descricao,
  });

  final String nome;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nome,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ThemeColors.primaryFontColor),
        ),
        SizedBox(
          width: 170,
          child: Text(
            descricao,
            style: const TextStyle(
              fontSize: 13,
              color: ThemeColors.secondaryFontColor,
            ),
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.visible,
          ),
        )
      ],
    );
  }
}
