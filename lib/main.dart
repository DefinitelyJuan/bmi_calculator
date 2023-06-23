import 'package:bmi_calculator/bmi_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => InputPage(), "/results" : (context) => BmiResultPage()} ,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0XFF0A0E21)
        )
      ),
      title: 'Material App',

    );
  }
}


