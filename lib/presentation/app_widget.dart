import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'routes/app_route.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _autoRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Airplane App',
      routerDelegate: _autoRouter.delegate(),
      routeInformationParser: _autoRouter.defaultRouteParser(),
    );
  }
}
