import 'package:flutter/material.dart';

abstract final class RadiusConstants {

  static const double value   = 4.0;

  static BorderRadius xsmall  = BorderRadius.circular(value);     // 4
  static BorderRadius small   = BorderRadius.circular(value * 2); // 8
  static BorderRadius medium  = BorderRadius.circular(value * 3); // 12
  static BorderRadius large   = BorderRadius.circular(value * 4); // 16
  static BorderRadius xlarge  = BorderRadius.circular(value * 6); // 24
  static BorderRadius xxlarge = BorderRadius.circular(value * 8); // 32

  static BorderRadius circle  = BorderRadius.circular(100);

}