import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/radius_constants.dart';

BottomSheetThemeData bottomSheetThemeData= const BottomSheetThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(RadiusConstants.value * 4)
    ),
  ),
  modalBackgroundColor: ColorConstants.white,
);