import 'package:flutter/material.dart';

class AudioNumber {
  String audioUri = "";
  MaterialColor buttonColor = Colors.blueGrey;
  String buttonText = "";
  AudioNumber(String aU, MaterialColor bC, String bT) {
    this.audioUri = aU;
    this.buttonColor = bC;
    this.buttonText = bT;
  }
}
