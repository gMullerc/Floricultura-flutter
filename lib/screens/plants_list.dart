import 'package:floricultura/components/headers/header_main.dart';
import 'package:floricultura/components/plants_card.dart';
import 'package:floricultura/data/lista_planta.dart';

import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _plantaLista = plantaslist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              children: const [HeaderDefault()],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return PlantsCard(
                  planta: _plantaLista[index], listaDePlanta: _plantaLista);
            }, childCount: _plantaLista.length),
          )
        ],
      ),
    );
  }
}
