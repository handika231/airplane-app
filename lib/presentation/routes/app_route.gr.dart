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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/models/popular_content.dart' as _i10;
import '../page/bonus_page.dart' as _i4;
import '../page/checkout_page.dart' as _i7;
import '../page/choose_page.dart' as _i6;
import '../page/detail_page.dart' as _i5;
import '../page/get_started_page.dart' as _i1;
import '../page/home_page.dart' as _i2;
import '../page/sign_up_page.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    GetStartedRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.GetStartedPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignUpPage(key: args.key));
    },
    BonusRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BonusPage());
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailPage(
              key: args.key, popularContent: args.popularContent));
    },
    ChooseRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChoosePage());
    },
    CheckoutRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CheckoutPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(GetStartedRoute.name, path: '/'),
        _i8.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i8.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i8.RouteConfig(BonusRoute.name, path: '/bonus-page'),
        _i8.RouteConfig(DetailRoute.name, path: '/detail-page'),
        _i8.RouteConfig(ChooseRoute.name, path: '/choose-page'),
        _i8.RouteConfig(CheckoutRoute.name, path: '/checkout-page')
      ];
}

/// generated route for
/// [_i1.GetStartedPage]
class GetStartedRoute extends _i8.PageRouteInfo<void> {
  const GetStartedRoute() : super(GetStartedRoute.name, path: '/');

  static const String name = 'GetStartedRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i9.Key? key})
      : super(SignUpRoute.name,
            path: '/sign-up-page', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BonusPage]
class BonusRoute extends _i8.PageRouteInfo<void> {
  const BonusRoute() : super(BonusRoute.name, path: '/bonus-page');

  static const String name = 'BonusRoute';
}

/// generated route for
/// [_i5.DetailPage]
class DetailRoute extends _i8.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i9.Key? key, required _i10.PopularContent popularContent})
      : super(DetailRoute.name,
            path: '/detail-page',
            args: DetailRouteArgs(key: key, popularContent: popularContent));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.popularContent});

  final _i9.Key? key;

  final _i10.PopularContent popularContent;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, popularContent: $popularContent}';
  }
}

/// generated route for
/// [_i6.ChoosePage]
class ChooseRoute extends _i8.PageRouteInfo<void> {
  const ChooseRoute() : super(ChooseRoute.name, path: '/choose-page');

  static const String name = 'ChooseRoute';
}

/// generated route for
/// [_i7.CheckoutPage]
class CheckoutRoute extends _i8.PageRouteInfo<void> {
  const CheckoutRoute() : super(CheckoutRoute.name, path: '/checkout-page');

  static const String name = 'CheckoutRoute';
}
