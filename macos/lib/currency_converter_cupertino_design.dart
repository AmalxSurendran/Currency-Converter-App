// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';

class currency_converter_cupertinoPage extends StatefulWidget {
  const currency_converter_cupertinoPage({super.key});

  @override
  State<currency_converter_cupertinoPage> createState() =>
      _currency_converter_cupertinoPageState();
}

class _currency_converter_cupertinoPageState
    extends State<currency_converter_cupertinoPage> {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = textEditingController.text.isEmpty
          ? 0
          : double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    //border

//color

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Currency Converter"),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              CupertinoTextField(
                controller: textEditingController,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: "please enter the amount in dollar",
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 15),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
