import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

import '../auth/sign_in/sign_in_view.dart';
import '../auth/sign_up/sign_up_view.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/color_constants.dart';
import '../../product/constants/image_constants.dart';
import '../../product/constants/padding_constants.dart';
import '../../product/constants/radius_constants.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SignInView()));
              },
            ),

            Container(
              color: ColorConstants.whiteAccent,
              margin: PaddingConstants.vLarge * 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppConstants.doNotHaveAnAccount),
                  GestureDetector(
                    child: const Text(AppConstants.signUp),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpView()));
                    },
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
