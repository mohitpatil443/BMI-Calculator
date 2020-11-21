import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'index.dart';


void main() => runApp(Bmi());

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //We update the current dark widget in order to generate our desired output
      //By default we have white color for the text

      theme: ThemeData.dark().copyWith(
        primaryColor: Color(kBackground),
        scaffoldBackgroundColor: Color(kBackground),
      ),

      //Either we can define home or we can define initialroute
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Index(),

      ),

      routes: {
        '/home' : (context) => Index(),
        '/result':(context) => Result(),

      },

    );
  }
}
