import 'package:airplane_app/injector.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../cubit/auth_cubit.dart';
import 'routes/app_route.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _autoRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => di.locator<AuthCubit>(),
        ),
      ],
      child: MaterialApp.router(
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 400,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(400, name: MOBILE),
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
      ),
    );
  }
}
