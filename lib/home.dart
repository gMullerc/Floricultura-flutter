import 'package:floricultura/components/headers/header_default.dart';
import 'package:floricultura/components/plants_card.dart';

import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import 'data/data_test.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List items = plantas;

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
            delegate: SliverChildBuilderDelegate(
                (context, index) => PlantsCard(
                      nome: items[index]['nome'],
                      descricao: items[index]['descricao'],
                      image: items[index]['imagem'],
                      price: items[index]['price'],
                    ),
                childCount: items.length),
          )
        ],
      ),
    );
  }
}
