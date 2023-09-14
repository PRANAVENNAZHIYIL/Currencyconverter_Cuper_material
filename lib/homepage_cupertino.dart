import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({Key? key}) : super(key: key);

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  final textEditingController = TextEditingController();
  double convertedvalue = 0;

  void function() {
    convertedvalue = double.parse(textEditingController.text) * 82.95;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 215, 60, 66),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 215, 60, 66),
        middle: Text("Currency Converter"),
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  " ₹ ${convertedvalue != 0 ? convertedvalue.toStringAsFixed(2) : convertedvalue.toStringAsFixed(1)}",
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 226, 214, 211)),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CupertinoTextField(
                      placeholder: 'Please Enter The Amount In USD',
                      prefix: const Icon(
                        CupertinoIcons.money_dollar,
                        color: CupertinoColors.black,
                      ),
                      controller: textEditingController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: CupertinoColors.white)),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                      color: CupertinoColors.black,
                      onPressed: function,
                      child: const Text("Convert")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
