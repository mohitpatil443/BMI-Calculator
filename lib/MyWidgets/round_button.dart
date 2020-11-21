import 'package:flutter/material.dart';
import '../constants.dart';

//RoundButton takes in IconData as an argument that is converted to icon and is given as a
//child of the RoundButton
//RoundButton takes in an onPressed function as an argument in order to set an onClickListener
//for the particular round button
class RoundButton extends StatelessWidget {
  RoundButton(this.icon, this.onPressed);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: kRoundColor,
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}