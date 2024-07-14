import 'package:flutter/material.dart';

abstract final class PaddingConstants {

  static const double value   = 4.0;

  static const double xsmall  = value;     // 4.0
  static const double small   = value * 2; // 8.0
  static const double medium  = value * 3; // 12.0
  static const double large   = value * 4; // 16.0
  static const double xlarge  = value * 6; // 24.0
  static const double xxlarge = value * 8; // 32.0

  // ALL
  static const EdgeInsets allXSmall = EdgeInsets.all(xsmall);
  static const EdgeInsets allSmall = EdgeInsets.all(small);
  static const EdgeInsets allMedium = EdgeInsets.all(medium);
  static const EdgeInsets allLarge = EdgeInsets.all(large);

  // HORIZONTAL
  static const EdgeInsets hXSmall = EdgeInsets.symmetric(horizontal: xsmall);
  static const EdgeInsets hSmall = EdgeInsets.symmetric(horizontal: small);
  static const EdgeInsets hMedium = EdgeInsets.symmetric(horizontal: medium);
  static const EdgeInsets hLarge = EdgeInsets.symmetric(horizontal: large);

  // VERTICAL
  static const EdgeInsets vXSmall = EdgeInsets.symmetric(vertical: xsmall);
  static const EdgeInsets vSmall = EdgeInsets.symmetric(vertical: small);
  static const EdgeInsets vMedium = EdgeInsets.symmetric(vertical: medium);
  static const EdgeInsets vLarge = EdgeInsets.symmetric(vertical: large);

  // TOP
  static const EdgeInsets onlyTXSmall = EdgeInsets.only(top: xsmall);
  static const EdgeInsets onlyTSmall = EdgeInsets.only(top: small);
  static const EdgeInsets onlyTMedium = EdgeInsets.only(top: medium);
  static const EdgeInsets onlyTLarge = EdgeInsets.only(top: large);

  // BOTTOM
  static const EdgeInsets onlyBXSmall = EdgeInsets.only(bottom: xsmall);
  static const EdgeInsets onlyBSmall = EdgeInsets.only(bottom: small);
  static const EdgeInsets onlyBMedium = EdgeInsets.only(bottom: medium);
  static const EdgeInsets onlyBLarge = EdgeInsets.only(bottom: large);

  // LEFT
  static const EdgeInsets onlyLXSmall = EdgeInsets.only(left: xsmall);
  static const EdgeInsets onlyLSmall = EdgeInsets.only(left: small);
  static const EdgeInsets onlyLMedium = EdgeInsets.only(left: medium);
  static const EdgeInsets onlyLLarge = EdgeInsets.only(left: large);

  // RIGHT
  static const EdgeInsets onlyRXSmall = EdgeInsets.only(right: xsmall);
  static const EdgeInsets onlyRSmall = EdgeInsets.only(right: small);
  static const EdgeInsets onlyRMedium = EdgeInsets.only(right: medium);
  static const EdgeInsets onlyRLarge = EdgeInsets.only(right: large);

  // LEFT-TOP
  static const EdgeInsets onlyLTSmall = EdgeInsets.only(left: small, top: small);
  static const EdgeInsets onlyLTMedium = EdgeInsets.only(left: medium, top: medium);
  static const EdgeInsets onlyLTLarge = EdgeInsets.only(left: large, top: large);

  // LEFT-BOTTOM
  static const EdgeInsets onlyLBSmall = EdgeInsets.only(left: small, bottom: small);
  static const EdgeInsets onlyLBMedium = EdgeInsets.only(left: medium, bottom: medium);
  static const EdgeInsets onlyLBLarge = EdgeInsets.only(left: large, bottom: large);

  // RIGHT-TOP
  static const EdgeInsets onlyRTSmall = EdgeInsets.only(right: small, top: small);
  static const EdgeInsets onlyRTMedium = EdgeInsets.only(right: medium, top: medium);
  static const EdgeInsets onlyRTLarge = EdgeInsets.only(right: large, top: large);

  // RIGHT-BOTTOM
  static const EdgeInsets onlyRBSmall = EdgeInsets.only(right: small, bottom: small);
  static const EdgeInsets onlyRBMedium = EdgeInsets.only(right: medium, bottom: medium);
  static const EdgeInsets onlyRBLarge = EdgeInsets.only(right: large, bottom: large);

}