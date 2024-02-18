import 'package:flutter/material.dart';

import 'product/routes/app_routes.dart';
import 'product/routes/route_service.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
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