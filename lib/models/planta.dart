import 'package:flutter/material.dart';

class Planta {
  final String id;
  final String name;
  final String description;
  final String image;
  final String price;

  const Planta(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price});
}
