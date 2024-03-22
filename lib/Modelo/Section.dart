import 'package:flutter/material.dart';

import 'Product.dart';

class Section {
  String title;
  String subtitle;
  Color color;
  List<Product> list;

  Section(
      {this.title = '',
      this.subtitle = '',
      required this.color,
      this.list = const []});
}

List<Section> sections = [
  Section(
    title: "Perejil",
    color: Colors.yellow,
    subtitle: "100% Orgánico",
    list: productPerejil,
  ),

  Section(
    title: "Ajos Tiernos",
    color: Colors.yellow,
    subtitle: "Cultivo Biológico",
    list: productAjos,
  ),

  Section(
    title: "Alcachofa",
    color: Colors.yellow,
    subtitle: "Hibridas",
    list: productAlcachofa,
  ),

  Section(
    title: "Apio",
    color: Colors.yellow,
    subtitle: "Verde",
    list: productApio,
  ),

  Section(
    title: "Berza",
    color: Colors.yellow,
    subtitle: "Rizada",
    list: productBerzaRizada,
  ),
];
