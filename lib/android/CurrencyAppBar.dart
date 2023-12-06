import 'package:flutter/material.dart';

class CurrencyAppBar extends AppBar {
   CurrencyAppBar({super.key})
  
      : super(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Text("currency convertor"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.white,
          ),
        );
}
