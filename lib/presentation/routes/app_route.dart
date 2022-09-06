// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:airplane_app/presentation/page/get_started_page.dart';
import 'package:airplane_app/presentation/page/home_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: GetStartedPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
