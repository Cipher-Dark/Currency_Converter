import 'package:currency_convertor/currency_converter_cupertino.dart';
import 'package:currency_convertor/currency_convertor_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCupertinoApp());
}

//Types of widges
// 1. Stateles widges
// 2. statefulWidges

// Tyoes of designs
//1 - materal design
//2 - cupertino Design

// for Material App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConvertor());
  }
}

// for cupertino appp
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertino(),
    );
  }
}
