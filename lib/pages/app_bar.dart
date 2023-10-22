import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    title: const Text(
      'Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {
        //Call any function needed.
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 20.0,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          //Call any function needed.
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          width: 36,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.settings_accessibility_rounded,
            color: Colors.black,
            size: 20.0,
          ),
        ),
      ),
    ],
  );
}
