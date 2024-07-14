import 'package:flutter/material.dart';

import '../product/constants/radius_constants.dart';

import '../product/extensions/size_extension.dart';

class CustomProfilePicture extends StatelessWidget {

  final String imagePath;
  final double? width;

  const CustomProfilePicture({
    super.key,
    required this.imagePath,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0.1.width,
      height: width ?? 0.1.width,
      child: ClipRRect(
        borderRadius: RadiusConstants.circle,
        child: Image.network(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}