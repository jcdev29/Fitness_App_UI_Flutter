import 'package:flutter/material.dart';

Widget searchField() {
  return Container(
    margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(15),
        hintText: 'Search Pancake',
        hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
        prefixIcon: const Icon(Icons.search_rounded, color: Colors.black),
        // ignore: sized_box_for_whitespace
        suffixIcon: Container(
          width: 50,
          child: const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                VerticalDivider(
                  color: Colors.black38,
                  thickness: 0.5,
                  indent: 10,
                  endIndent: 10,
                ),
                Icon(Icons.filter_alt_rounded, color: Colors.black),
              ],
            ),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      ),
    ),
  );
}
