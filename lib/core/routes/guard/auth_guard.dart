import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/preferenses/local_prefs.dart';
import 'package:bloc_mvvm/core/routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool userLogin = LocalPrefs().getLocalPrefBool(key: 'user_login');

    if (userLogin) {
      resolver.next(true);

      print("USER:::::::::::::::::::::::::Login");
    } else {
      router.push(LoginRoute(onResultl: (result) {
        if (result == true) {
          resolver.next(true);

          router.removeLast();

          print("NOt Login::::::::::::::::::::::::::");
        }

        print("ELSE::::::::::::::::::::::::::::::");
      }));
    }
  }
}
