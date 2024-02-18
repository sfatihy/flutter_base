import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_text_form_field.dart';

import '../../../product/constants/app_constants.dart';
import '../../../product/constants/image_constants.dart';
import '../../../product/constants/padding_constants.dart';

import '../../../product/routes/app_routes.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              ImageConstants.signInBackgroundImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: PaddingConstants.onlyTLarge * 5 + PaddingConstants.onlyBLarge * 2.5 + PaddingConstants.onlyLMedium,
              child: Text(
                AppConstants.signInText,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.usernameFormFieldText
            ),

            const SizedBox(
              height: PaddingConstants.large,
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.passwordFormFieldText,
              isPassword: true,
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: PaddingConstants.onlyTMedium + PaddingConstants.onlyRLarge,
                child: const Text(AppConstants.forgetPasswordText),
              ),
            ),

            const SizedBox(
              height: PaddingConstants.xxlarge,
            ),

            Center(
              child: CustomButton(
                text: AppConstants.signIn,
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, AppRoutes.base, (route) => false);
                },
              ),
            )

          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}