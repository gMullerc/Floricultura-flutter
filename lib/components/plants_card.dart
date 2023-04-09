import 'package:floricultura/components/card_image.dart';
import 'package:floricultura/components/card_text.dart';
import 'package:floricultura/components/cards/ComboProgressBar.dart';
import 'package:floricultura/models/planta.dart';
import 'package:floricultura/screens/detail_plants.dart';
import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PlantsCard extends StatefulWidget {
  final Planta planta;
  final List<Planta> listaDePlanta;
  const PlantsCard(
      {Key? key, required this.planta, required this.listaDePlanta})
      : super(key: key);

  @override
  State<PlantsCard> createState() => _PlantsCardState();
}

class _PlantsCardState extends State<PlantsCard> {
  Map<String, String>? map;

  _openPlantsDetails(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailPlants(
                  planta: widget.planta,
                  listaDePlanta: widget.listaDePlanta,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      splashColor: ThemeColors.secondaryColor,
      onTap: () {
        _openPlantsDetails(context);
      },
      child: SizedBox(
        height: 270,
        child: Card(
          margin: const EdgeInsets.fromLTRB(0, 0, 25, 15),
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardImage(image: widget.planta.image),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 8, 15),
                            child: SizedBox(
                              width: 170,
                              child: CardText(
                                  nome: widget.planta.name,
                                  descricao: widget.planta.description),
                            ),
                          ),
                        ],
                      ),
                      ComboProgressBar(price: widget.planta.price),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
