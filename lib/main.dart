import 'package:currency_converter/homepage_cupertino.dart';
import 'package:currency_converter/homepage_material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppCupertino());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curreny Converterd',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CurrecyCoverterMaterialPage(),
    );
  }
}

class MyAppCupertino extends StatelessWidget {
  const MyAppCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter',
      theme: CupertinoThemeData(
        primaryColor:
            CupertinoColors.systemPurple, // Use CupertinoColors for the color
        brightness: Brightness.light, // Adjust as needed
      ),
      home: CurrencyConverterCupertino(), // Update the class name
    );
  }
}
