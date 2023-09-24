// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/routes/guard/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: HomeRoute.page, guards: [AuthGuard()]),
        //
        //

        // Botom Navigater
        AutoRoute(page: DashBordRoute.page, children: [
          AutoRoute(page: FirstNavigatorRoute.page, children: [
            // NestedNavigater page
            AutoRoute(page: FirstRoute.page, initial: true),
            AutoRoute(page: DetailRoute.page),
          ]),
          AutoRoute(page: SecondsRoute.page),
        ]),
      ];
}
