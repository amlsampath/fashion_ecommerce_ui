import 'package:flutter/material.dart';

class StyleModel {
  String image;
  String title;
  String price;
  List<String> sizes;
  List<Color> colors;

  StyleModel({
    required this.colors,
    required this.image,
    required this.price,
    required this.sizes,
    required this.title,
  });
}
