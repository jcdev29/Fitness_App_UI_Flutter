import 'package:flutter/material.dart';

class DietModel {
  String name;
  String icon;
  String level;
  String duration;
  String calories;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.icon,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiet() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: 'Omelette ',
        icon: 'assets/icons/omelette.svg',
        level: 'Easy',
        duration: '10mins',
        calories: '80Cal',
        boxColor: const Color(0xff92A3FD),
        viewIsSelected: true));
    diets.add(DietModel(
        name: 'Banana Bread ',
        icon: 'assets/icons/banana-bread.svg',
        level: 'Medium',
        duration: '40mins',
        calories: '180Cal',
        boxColor: const Color(0xff92A3FD),
        viewIsSelected: false));
    diets.add(DietModel(
        name: 'Sandwhich ',
        icon: 'assets/icons/sandwhich.svg',
        level: 'Easy',
        duration: '8mins',
        calories: '60Cal',
        boxColor: const Color(0xffC58BF2),
        viewIsSelected: false));

    // Return the list of diets.
    return diets;
  }
}
