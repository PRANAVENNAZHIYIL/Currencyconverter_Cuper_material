import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CurrecyCoverterMaterialPage extends StatefulWidget {
  const CurrecyCoverterMaterialPage({Key? key}) : super(key: key);

  @override
  State<CurrecyCoverterMaterialPage> createState() =>
      _CurrecyCoverterMaterialPageState();
}

class _CurrecyCoverterMaterialPageState
    extends State<CurrecyCoverterMaterialPage> {
  final textEditingController = TextEditingController();
  double convertedvalue = 0;

  void function() {
    convertedvalue = double.parse(textEditingController.text) * 82.95;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide:
            BorderSide(color: Color.fromARGB(255, 12, 67, 54), width: 3));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 95, 32),
        title: const Text(
          "Currency converter",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromARGB(255, 2, 2, 2)),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 196, 95, 32),
      body: SafeArea(
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
                TextField(
                  controller: textEditingController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: border,
                      focusedBorder: border,
                      hintText: "Please Enter The Amount In USD",
                      prefixIcon: Icon(Icons.attach_money),
                      prefixIconColor: Color.fromARGB(255, 68, 67, 67)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size(380, 45),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 81, 80, 80)),
                    onPressed: function,
                    child: const Text("Convert"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
