import 'package:floricultura/components/card_image.dart';
import 'package:floricultura/components/card_text.dart';
import 'package:floricultura/components/price_circle.dart';
import 'package:floricultura/components/progress_bar.dart';
import 'package:floricultura/screens/detail_plants.dart';
import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PlantsCard extends StatefulWidget {
  final String nome;
  final String descricao;
  final String image;
  final String price;

  PlantsCard(
      {Key? key,
      required this.nome,
      required this.descricao,
      required this.image,
      required this.price})
      : super(key: key);

  @override
  State<PlantsCard> createState() => _PlantsCardState();
}

class _PlantsCardState extends State<PlantsCard> {
  Map<String, String>? map;

  _openTransactionFormModal(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailPlants()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openTransactionFormModal(context);
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
                  CardImage(image: widget.image),
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
                            child: CardText(
                                nome: widget.nome, descricao: widget.descricao),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 110,
                                  child: Column(
                                    children: [
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
                                  price: widget.price,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
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
