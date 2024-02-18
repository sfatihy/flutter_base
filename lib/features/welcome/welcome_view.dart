import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/color_constants.dart';
import '../../product/constants/image_constants.dart';
import '../../product/constants/padding_constants.dart';
import '../../product/constants/radius_constants.dart';

import '../../product/routes/app_routes.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.25,1],
            colors: [
              ColorConstants.primary,
              ColorConstants.secondary
            ]
          )
        ),
        child: Column(
          children: [

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: RadiusConstants.circle,
                  child: Image.network(
                    ImageConstants.appLogo,
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                ),
                Padding(
                  padding: PaddingConstants.onlyLSmall,
                  child: Text(
                    AppConstants.appName,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                )
              ],
            ),

            const Spacer(),

            CustomButton(
              text: AppConstants.signIn,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signIn);
              },
            ),

            Container(
              color: ColorConstants.whiteAccent,
              margin: PaddingConstants.vLarge * 2.5,
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppConstants.doNotHaveAnAccount,
                  style: const TextStyle(
                    color: ColorConstants.black
                  ),
                  children: [
                    TextSpan(
                      text: AppConstants.signUp,
                      style: const TextStyle(
                        color: ColorConstants.black
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pushNamed(context, AppRoutes.signUp);
                      }
                    )
                  ]
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}