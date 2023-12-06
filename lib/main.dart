import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningpart/android/CurencyConvertor.dart';
import 'package:learningpart/ios/CurencyConvertorIos.dart';

void main() {
  runApp(const MyApp());
}

// app for android
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurencyConvertor());
  }
}

// app for ios
class MyappIos extends StatelessWidget {
  const MyappIos({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurencyConvertorIos(),
    );
  }
}
