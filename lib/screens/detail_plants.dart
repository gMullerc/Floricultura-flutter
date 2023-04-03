import 'package:floricultura/components/price_circle.dart';
import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class DetailPlants extends StatefulWidget {
  DetailPlants({Key? key}) : super(key: key);

  @override
  _DetailPlantsState createState() => _DetailPlantsState();
}

class _DetailPlantsState extends State<DetailPlants> {
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
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: ThemeColors.secondaryColor),
                    ),
                  ],
                ),
                height: mediaQuery.size.height,
                width: mediaQuery.size.width,
                color: ThemeColors.primaryColor,
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
                            padding: EdgeInsets.all(20),
                            height: contraints.maxHeight * 0.75,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(
                                  'Plant Name',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: ThemeColors.primaryFontColor),
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
                                child: Image.asset('assets/images/cacto.png')),
                            Positioned(
                              child: PriceCircle(price: '55'),
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
