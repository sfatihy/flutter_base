import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_colorful_container.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/color_constants.dart';
import '../../product/constants/image_constants.dart';
import '../../product/constants/padding_constants.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppConstants.error,
          style: TextStyle(
            color: ColorConstants.white
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: ColorConstants.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              ImageConstants.errorBackgroundImage
            ),
            fit: BoxFit.fill
          )
        ),
        child: SafeArea(
          child: Column(
            children: [

              const SizedBox(
                height: PaddingConstants.xxlarge,
              ),

              CustomColorfulContainer(
                colors: const [
                  Colors.transparent,
                  ColorConstants.whiteAccent,
                  Colors.transparent
                ],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Transform.rotate(
                      angle: -15 * math.pi / 180,
                      child: const Text(
                        "  4",
                        style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 64
                        ),
                      ),
                    ),

                    const Text(
                      "0",
                      style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 64,
                      ),
                    ),

                    Transform.rotate(
                      angle: 15 * math.pi / 180,
                      child: const Text(
                        "4  ",
                        style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 64
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(
                height: PaddingConstants.xxlarge,
              ),
              
              const Text(
                AppConstants.errorText,
                style: TextStyle(
                  color: ColorConstants.white,
                  fontSize: 24
                ),
              ),

              const Spacer(),

              CustomButton(
                text: AppConstants.errorButtonText,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(
                height: PaddingConstants.medium,
              )

            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}