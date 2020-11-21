import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  //Both are required so no curly braces
  //Constructors consists of the variables in the container
  IconContent(this.icon,this.label);

  //IconData is for icon
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80),
        SizedBox(
          height: 10.0,
        ),
        Text(label),
      ],
    );
  }
}
