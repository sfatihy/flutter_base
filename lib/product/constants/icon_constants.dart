import 'dart:io';

import 'package:flutter/material.dart';

abstract class IconConstants {

  // Arrows
  static IconData arrowBack = Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back;
  static IconData arrowForward = Platform.isIOS ? Icons.arrow_forward_ios : Icons.arrow_forward;
  static IconData arrowUp = Icons.arrow_upward_outlined;
  static IconData arrowDown = Icons.arrow_downward_outlined;

  // Auth
  static const IconData password = Icons.remove_red_eye_rounded;

  // Base
  static const IconData home = Icons.home;
  static const IconData explore = Icons.punch_clock;
  static const IconData user = Icons.person;

  // Home
  static const IconData moreDetail = Icons.more_horiz_outlined;
  static const IconData favorite = Icons.favorite_border_outlined;

  // Profile
  static const IconData menu = Icons.menu_outlined;

}