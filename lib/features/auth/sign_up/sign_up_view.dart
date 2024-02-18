import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_text_form_field.dart';

import '../../../product/constants/app_constants.dart';
import '../../../product/constants/image_constants.dart';
import '../../../product/constants/padding_constants.dart';

import '../../../product/routes/app_routes.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              ImageConstants.signUpBackgroundImage,
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
                AppConstants.signUpText,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.nameFormFieldText
            ),

            const SizedBox(
              height: PaddingConstants.large,
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.usernameFormFieldText,
            ),

            const SizedBox(
              height: PaddingConstants.large,
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.emailFormFieldText,
            ),

            const SizedBox(
              height: PaddingConstants.large,
            ),

            CustomTextFormField(
              textEditingController: TextEditingController(),
              text: AppConstants.passwordFormFieldText,
              isPassword: true,
            ),

            const SizedBox(
              height: PaddingConstants.xxlarge,
            ),

            Center(
              child: CustomButton(
                text: AppConstants.signUp,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signIn);
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