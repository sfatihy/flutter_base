import 'package:flutter/material.dart';

import '../product/constants/padding_constants.dart';
import '../product/constants/radius_constants.dart';

class CustomColorfulContainer extends StatelessWidget {

  final List<Color> colors;
  final Widget child;

  const CustomColorfulContainer({
    super.key,
    required this.colors,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingConstants.allXSmall,
      decoration: BoxDecoration(
        borderRadius: RadiusConstants.medium,
        gradient: LinearGradient(
          colors: colors
        )
      ),
      child: child,
    );
  }
}