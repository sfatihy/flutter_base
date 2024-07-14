import 'package:flutter/material.dart';

abstract final class BorderConstants {

  static const Border formTextBorder = Border(
    left: BorderSide(
      color: Colors.white,
      strokeAlign: BorderSide.strokeAlignOutside,
      width: 2
    ),
    top: BorderSide(
      color: Colors.white,
      strokeAlign: BorderSide.strokeAlignOutside,
      width: 2
    ),
    right: BorderSide(
      color: Colors.white,
      strokeAlign: BorderSide.strokeAlignOutside,
      width: 2
    ),
    bottom: BorderSide(
      color: Colors.white,
      strokeAlign: BorderSide.strokeAlignOutside,
      width: 2,
      style: BorderStyle.none
    )
  );

}