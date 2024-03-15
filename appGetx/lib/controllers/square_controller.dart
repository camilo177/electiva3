import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class SquareController extends GetxController {
  double rotationAngle = 0.0;
  Color squareColor = Colors.blue;

  void rotateSquareClockwise() {
    rotationAngle += pi / 4;
    update();
  }

  void rotateSquareCounterclockwise() {
    rotationAngle -= pi / 4; 
    update();
  }

  void changeSquareColor(Color color) {
    squareColor = color;
    update();
  }
}
