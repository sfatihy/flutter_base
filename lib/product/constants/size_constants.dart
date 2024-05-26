import 'package:flutter/material.dart';

abstract class SizeConstants {

  static const double value   = 4.0;

  static const double xSmall  = value;     // 4.0
  static const double small   = value * 2; // 8.0
  static const double medium  = value * 3; // 12.0
  static const double large   = value * 4; // 16.0
  static const double xlarge  = value * 6; // 24.0
  static const double xxLarge = value * 8; // 32.0

  //static FlutterView physicalSize = WidgetsBinding.instance.platformDispatcher.views.first;
  //static Size size = physicalSize.physicalSize / physicalSize.devicePixelRatio;

  static late Size size;
  static late TextScaler textScaler;

  static void init(BuildContext context) {
    size = MediaQuery.of(context).size;
    textScaler = MediaQuery.of(context).textScaler;
  }

  static double get height => size.height;
  static double get width => size.width;
  static double get designWidth => 375;
  static double get designHeight => 875;

}