import 'package:flutter/material.dart';

import 'app_routes.dart';

import '../../features/auth/sign_in/sign_in_view.dart';
import '../../features/auth/sign_up/sign_up_view.dart';
import '../../features/base/base_view.dart';
import '../../features/error/error_view.dart';
import '../../features/splash/splash_view.dart';
import '../../features/welcome/welcome_view.dart';

class RouteService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case AppRoutes.base:
        return MaterialPageRoute(builder: (_) => const BaseView());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorView(), fullscreenDialog: true);
    }
  }
}