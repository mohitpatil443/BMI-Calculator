import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain {
  int _height;
  int _weight;
  double _bmi;

  //As soon as the object of the BmiBrain is created
  //We call the calcBmi function which is private
  //and hence bmi is calculated
  //In order to access the private variable bmi
  //we create a public function called getBmi()

  BmiBrain(this._height, this._weight) {
    _bmi = _weight / (pow(_height / 100, 2));
  }

  String getStat() {
    if (_bmi <= 18.5)
      return 'Underweight';
    else if (_bmi <= 25)
      return 'Normal';
    else if (_bmi <= 30)
      return 'Overweight';
    else if (_bmi > 30) return 'Obese';
  }

  String getBmi() {
    //toString as fixed used to limit the number of digits after the decimal
    return _bmi.toStringAsFixed(1);
  }

  String getTip() {
    if (_bmi <= 18.5)
      return 'Eat like hell,Need a lot of calories!!!';
    else if (_bmi <= 25)
      return 'You are in good shape,Keep it up!!!';
    else if (_bmi <= 30)
      return 'Need to watch your calories!!!';
    else if (_bmi > 30) return 'Better lose weight,Now or Never';
  }
}
