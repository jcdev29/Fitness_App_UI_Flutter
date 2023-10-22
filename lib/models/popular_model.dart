import 'package:flutter/material.dart';

class PopularModel {
  String name;
  String icon;
  String level;
  String duration;
  String calories;
  Color boxColor;
  bool boxIsSelected;

  PopularModel({
    required this.name,
    required this.icon,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxColor,
    required this.boxIsSelected,
  });

  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];

    popular.add(PopularModel(
        name: 'Spaghetti',
        icon: 'assets/icons/spaghetti.svg',
        level: 'Medium',
        duration: '30mins',
        calories: '210Cal',
        boxColor: const Color(0xff92A3FD),
        boxIsSelected: true));

    popular.add(PopularModel(
        name: 'Mashed Potato',
        icon: 'assets/icons/mashed-potato.svg',
        level: 'Medium',
        duration: '20mins',
        calories: '60Cal',
        boxColor: const Color(0xff92A3FD),
        boxIsSelected: false));

    // Return the list of diets.
    return popular;
  }
}
