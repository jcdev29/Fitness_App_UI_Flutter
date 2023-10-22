import 'package:fitness/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<PopularModel> popular = [];

void _getpopular() {
  popular = PopularModel.getPopular();
}

Widget popularSection() {
  _getpopular();
  return SizedBox(
    child: ListView.separated(
      itemCount: popular.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 20, right: 20),
      separatorBuilder: (context, index) => const SizedBox(height: 25),
      itemBuilder: (context, index) {
        return Container(
            height: 115,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff1D1617),
                      offset: Offset(0, 10),
                      blurRadius: 40,
                      spreadRadius: 0),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset(popular[index].icon),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      popular[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${popular[index].level} | ${popular[index].duration} | ${popular[index].calories}',
                      style: const TextStyle(
                          color: Color(0xff7B6F72),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      //Your function
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                    ))
              ],
            ));
      },
    ),
  );
}
