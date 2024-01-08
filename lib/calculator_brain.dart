import 'dart:math';

import 'package:flutter/material.dart';

class calculatorBrain{

  calculatorBrain({required this.weight,required this.height});
  final int height;
  final int weight;

  double _BMI=0;

  String CalculateBMI(){
    _BMI = weight / pow(height/100,2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI >= 25){
      return 'OVERWEIGHT';
    }
    else if(_BMI > 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String Interpretation(){
    if(_BMI >= 25){
      return 'You have Higher Weight Than Normal Body Weight, Try to Exercise and Eat healthy Food.';
    }
    else if(_BMI > 18.5){
      return 'You have Good Body Weight, Good Job!';
    }
    else{
      return 'You have a Lower Weight than Normal Body Weight, You can Eat More Food.';
    }
  }
}