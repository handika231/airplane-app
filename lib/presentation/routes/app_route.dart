// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:airplane_app/presentation/page/get_started_page.dart';
import 'package:airplane_app/presentation/page/home_page.dart';
import 'package:auto_route/annotations.dart';

import '../page/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: GetStartedPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: SignUpPage),
  ],
)
class $AppRouter {}
