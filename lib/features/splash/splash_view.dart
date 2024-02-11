import 'dart:async';

import 'package:flutter/material.dart';

import '../welcome/welcome_view.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/color_constants.dart';
import '../../product/constants/padding_constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const WelcomeView()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.25,0.9],
            colors: [
              ColorConstants.splashGradient1,
              ColorConstants.splashGradient2
            ]
          )
        ),
        child: Center(
          child: Column(
            children: [

              const Spacer(),

              const FlutterLogo(
                size: 32 * 5,
              ),

              const Spacer(),

              Padding(
                padding: PaddingConstants.onlyBLarge * 2,
                child: Column(
                  children: [
                    Text(
                      AppConstants.splashText,
                      style: Theme.of(context).textTheme.titleMedium
                    ),
                    Text(
                      AppConstants.splashText2,
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}