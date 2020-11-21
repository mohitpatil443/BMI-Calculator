import 'package:flutter/material.dart';


//By extracting the widget from the flutter outline
//we get the widget as a stateless widget.

class CustomCard extends StatelessWidget {
  //cardChild initialized in the constructor

  //If making an optional parameter we can give curly braces
  //around the parameters
  CustomCard({this.cardChild,this.colour});

  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      //If decoration is provided we cannot give color property
      //We need to give it inside the decoration

      //In order to receive a variable child
      //It is not necessary that each container has icon
      //We accept a widget instead

      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color:colour,
      ),
      child: cardChild,
    );
  }
}