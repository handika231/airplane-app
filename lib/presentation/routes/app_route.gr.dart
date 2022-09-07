// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../page/get_started_page.dart' as _i1;
import '../page/home_page.dart' as _i2;
import '../page/sign_up_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    GetStartedRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.GetStartedPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignUpPage(key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(GetStartedRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i4.RouteConfig(SignUpRoute.name, path: '/sign-up-page')
      ];
}

/// generated route for
/// [_i1.GetStartedPage]
class GetStartedRoute extends _i4.PageRouteInfo<void> {
  const GetStartedRoute() : super(GetStartedRoute.name, path: '/');

  static const String name = 'GetStartedRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i5.Key? key})
      : super(SignUpRoute.name,
            path: '/sign-up-page', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}
