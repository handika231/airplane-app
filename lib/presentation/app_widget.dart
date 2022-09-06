import 'package:flutter/material.dart';

import 'routes/app_route.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _autoRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Airplane App',
      routerDelegate: _autoRouter.delegate(),
      routeInformationParser: _autoRouter.defaultRouteParser(),
    );
  }
}
