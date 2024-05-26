import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/radius_constants.dart';
import '../../constants/size_constants.dart';

ElevatedButtonThemeData elevatedButtonThemeData  = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: ColorConstants.primary,
    foregroundColor: ColorConstants.white,
    shape: ContinuousRectangleBorder(
      borderRadius: RadiusConstants.large
    ),
    minimumSize: const Size.fromHeight(SizeConstants.xxLarge)
  )
);