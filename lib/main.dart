import 'package:flutter/material.dart';

import 'product/constants/size_constants.dart';

import 'product/routes/app_routes.dart';
import 'product/routes/route_service.dart';

import 'product/themes/light_theme/light_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConstants.init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      onGenerateRoute: RouteService.generateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}