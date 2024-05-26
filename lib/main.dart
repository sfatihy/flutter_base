import 'package:flutter/material.dart';
import 'package:flutter_base/product/extensions/size_extension.dart';

import 'product/constants/size_constants.dart';
import 'product/routes/app_routes.dart';
import 'product/routes/route_service.dart';

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
      theme: ThemeData(
        useMaterial3: true
      ),
      onGenerateRoute: RouteService.generateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}