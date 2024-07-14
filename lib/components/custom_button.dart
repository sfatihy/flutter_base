import 'package:flutter/material.dart';

import 'custom_colorful_container.dart';

import '../product/constants/color_constants.dart';
import '../product/constants/padding_constants.dart';
import '../product/constants/radius_constants.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: CustomColorfulContainer(
        colors: const [
          Color(0xFFFFD840),
          Color(0xFFF3ACFF),
          Color(0xFF8AECFF),
        ],
        child: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          decoration: BoxDecoration(
            color: ColorConstants.whiteAccent,
            borderRadius: RadiusConstants.small
          ),
          padding: PaddingConstants.allSmall,
          child: Center(
            child: Text(text)
          ),
        ),
      ),
    );
  }
}