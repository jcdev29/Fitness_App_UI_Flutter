// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String icon;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad',
        icon: 'assets/icons/salad.svg',
        boxColor: const Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: 'Cake',
        icon: 'assets/icons/cake.svg',
        boxColor: const Color(0xffC58BF2)));

    categories.add(CategoryModel(
        name: 'Bread',
        icon: 'assets/icons/baguette.svg',
        boxColor: const Color(0xff92A3FD)));

    // Return the list of categories.
    return categories;
  }
}
