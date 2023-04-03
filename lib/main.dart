import 'package:floricultura/home.dart';
import 'package:floricultura/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Floricultura());
}

class Floricultura extends StatelessWidget {
  const Floricultura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floricultura',
      theme: myTheme,
      home: const Home(),
    );
  }
}
