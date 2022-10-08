// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:airplane_app/presentation/page/bonus_page.dart';
import 'package:airplane_app/presentation/page/checkout_page.dart';
import 'package:airplane_app/presentation/page/choose_page.dart';
import 'package:airplane_app/presentation/page/get_started_page.dart';
import 'package:airplane_app/presentation/page/home_page.dart';
import 'package:airplane_app/presentation/page/sign_out_page.dart';
import 'package:airplane_app/presentation/page/success_checkout_page.dart';
import 'package:auto_route/annotations.dart';

import '../page/detail_page.dart';
import '../page/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: GetStartedPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: BonusPage),
    AutoRoute(page: DetailPage),
    AutoRoute(page: ChoosePage),
    AutoRoute(page: CheckoutPage),
    AutoRoute(page: SuccessCheckoutPage),
    AutoRoute(page: SignOutPage),
  ],
)
class $AppRouter {}
