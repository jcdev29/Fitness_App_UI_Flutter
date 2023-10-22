import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/pages/category_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<DietModel> diets = [];

void _getInitialInfo() {
  categories = CategoryModel.getCategories();
  diets = DietModel.getDiet();
}

Widget reccommendedSection() {
  _getInitialInfo();
  return SizedBox(
    height: 240,
    child: ListView.separated(
      // ignore: body_might_complete_normally_nullable
      itemBuilder: (context, index) {
        return Container(
          width: 210,
          decoration: BoxDecoration(
            color: diets[index].boxColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: SvgPicture.asset(diets[index].icon),
              ),
              Text(
                diets[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                '${diets[index].level} | ${diets[index].duration} | ${diets[index].calories}',
                style: const TextStyle(
                    color: Color(0xff7B6F72),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Container(
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        diets[index].viewIsSelected
                            ? const Color(0xff9DCEFF)
                            : Colors.transparent,
                        diets[index].viewIsSelected
                            ? const Color(0xff92A3FD)
                            : Colors.transparent
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(
                    'View',
                    style: TextStyle(
                      color: diets[index].viewIsSelected
                          ? Colors.white
                          : const Color(0xffC588F2),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 25),
      itemCount: diets.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
    ),
  );
}
