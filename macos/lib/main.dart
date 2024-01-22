import 'package:currencyconverter_app/currency_converter_cupertino_design.dart';
import 'package:currencyconverter_app/currency_converter_material_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Currencyconverterhomepage());
  }
}

// void main() {
//   runApp(const MycupertinoApp());
// }

class MycupertinoApp extends StatelessWidget {
  const MycupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: currency_converter_cupertinoPage());
  }
}
