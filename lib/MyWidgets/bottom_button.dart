import 'package:flutter/material.dart';
import '../constants.dart';


//We will need to change the functionality and label of the button
class Bottom_button extends StatelessWidget {

  Bottom_button(this.label, this.onPressed);

  final String label;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kButton,
        width: double.infinity,
        height: 60.0,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

