import 'package:flutter/material.dart';

class Currencyconverterhomepage extends StatefulWidget {
  const Currencyconverterhomepage({super.key});

  @override
  State<Currencyconverterhomepage> createState() =>
      _CurrencyconverterhomepageState();
}

class _CurrencyconverterhomepageState extends State<Currencyconverterhomepage> {
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
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide:
          BorderSide(width: 2, color: Colors.black, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
//color

    const maincolor = Colors.white70;
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
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
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "please enter the amount in dollar",
                  hintStyle: TextStyle(color: Colors.black54),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
