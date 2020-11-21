import 'package:flutter/material.dart';
import 'gender.dart';

//Const must be initialized to a value before runtime
//Final can be initialized at runtime
const  kBackground = 0xFFFF090C22;
const  kFront = 0xFF1D1F33;
const  kButton = Color(0xFFEB1555);
const  kinactiveColor = Color(0xFF111328);
const  kRoundColor = Color(0xFF4C4F5E);
int height = 170;
int weight = 70;
int age = 25;
Gender selectedGender;
const numStyle = TextStyle(
  fontSize: 40.0,
  //FontWeight used in order to make it bold
  fontWeight: FontWeight.w900,
);

const resultTag = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,

);

const statTag = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w500,
  color: Colors.green
);

const numTag = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);

const tipTag = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

