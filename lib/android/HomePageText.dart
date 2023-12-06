import 'package:flutter/material.dart';

class HomePageText extends Text {
  // text in the home screen use to display the converted currency in the app
  // it initialy contain 0
  // with some basic styles

  HomePageText(String  text, {super.key})
      : super(
          " Rs. $text",
          style: const TextStyle(
              fontSize: 45,
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w600),
        );
}
