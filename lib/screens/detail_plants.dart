import 'package:floricultura/components/headers/header_text.dart';
import 'package:floricultura/components/price_circle.dart';
import 'package:floricultura/components/progress_bar.dart';
import 'package:floricultura/components/star_assessment.dart';
import 'package:floricultura/models/planta.dart';
import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class DetailPlants extends StatefulWidget {
  DetailPlants({Key? key, required this.planta, required this.listaDePlanta})
      : super(key: key);
  final List<Planta> listaDePlanta;
  final Planta planta;
  @override
  _DetailPlantsState createState() => _DetailPlantsState();
}

class _DetailPlantsState extends State<DetailPlants> {
  _removePlants(String id) {
    setState(() {
      widget.listaDePlanta.removeWhere((planta) => planta.id == id);
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                height: mediaQuery.size.height,
                width: mediaQuery.size.width,
                color: ThemeColors.primaryColor,
                child: Column(
                  children: const [
                    HeaderText(textHeader: 'Details'),
                  ],
                ),
              ),
              Positioned(
                top: 45,
                left: 10,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: ThemeColors.secondaryColor,
                    )),
              ),
              Positioned(
                top: 300,
                child: Container(
                  height: mediaQuery.size.height * 0.7,
                  width: mediaQuery.size.width,
                  color: ThemeColors.secondaryColor,
                  child: LayoutBuilder(
                    builder: (ctx, contraints) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            height: contraints.maxHeight * 0.75,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    widget.planta.name,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: ThemeColors.primaryFontColor),
                                  ),
                                ),
                                Text(
                                  widget.planta.description,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: ThemeColors.secondaryFontColor),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  child: const StarAssessment(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        child: Column(
                                          children: const [
                                            ProgressBar(),
                                            ProgressBar()
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 130,
                                        child: Column(
                                          children: [
                                            ProgressBar(),
                                            ProgressBar()
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            _removePlants(widget.planta.id);
                                          },
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      ThemeColors.primaryColor),
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                      const Size(120, 35)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              )),
                                          child: const Text(
                                            "Editar",
                                            style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                              color: ThemeColors.secondaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: 125,
                child: SizedBox(
                  width: mediaQuery.size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: ThemeColors.greyColor,
                        radius: 155,
                        child: Stack(
                          children: [
                            CircleAvatar(
                                backgroundColor: ThemeColors.secondaryColor,
                                radius: 140,
                                child: Image.asset(widget.planta.image)),
                            Positioned(
                              child: PriceCircle(price: widget.planta.price),
                              width: 60,
                              height: 60,
                              bottom: 0,
                              right: 0,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
/* Container(
            height: mediaQuery.size.height * 0.3,
            color: Colors.amber,
            padding: EdgeInsets.all(50),
            child: Text(
              'Details',
              style: TextStyle(
                  color: ThemeColors.secondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: mediaQuery.size.height * 0.7,
            width: mediaQuery.size.width,
            color: Colors.amber,
            padding: EdgeInsets.all(50),
            child: Text(
              'Details',
              style: TextStyle(
                  color: ThemeColors.secondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ), */
