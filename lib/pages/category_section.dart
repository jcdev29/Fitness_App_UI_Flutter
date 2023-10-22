import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fitness/models/category_model.dart';

List<CategoryModel> categories = [];

void _getCategories() {
  categories = CategoryModel.getCategories();
}

Widget categorySection() {
  _getCategories();
  return SizedBox(
    height: 120,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 20),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          decoration: BoxDecoration(
            color: categories[index].boxColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(categories[index].icon),
                ),
              ),
              Text(
                categories[index].name,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14),
              )
            ],
          ),
        );
      },
    ),
  );
}
