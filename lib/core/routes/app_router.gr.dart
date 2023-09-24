// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/dash_board_page.dart'
    as _i1;
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/detail_page.dart'
    as _i2;
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/first_apge.dart'
    as _i4;
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/first_main_page.dart'
    as _i3;
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/second_page.dart'
    as _i7;
import 'package:bloc_mvvm/features/home/presentation/pages/home_page.dart'
    as _i5;
import 'package:bloc_mvvm/features/login/presentation/pages/login_page.dart'
    as _i6;
import 'package:bloc_mvvm/features/splash/presentation/pages/splash_page.dart'
    as _i8;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    DashBordRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBordPage(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>(
          orElse: () => const DetailRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailPage(
          key: args.key,
          image: args.image,
        ),
      );
    },
    FirstNavigatorRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FirstNavigatorPage(),
      );
    },
    FirstRoute.name: (routeData) {
      final args = routeData.argsAs<FirstRouteArgs>(
          orElse: () => const FirstRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.FirstPage(
          key: args.key,
          email: args.email,
          image: args.image,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginPage(
          key: args.key,
          onResultl: args.onResultl,
        ),
      );
    },
    SecondsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SecondsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBordPage]
class DashBordRoute extends _i9.PageRouteInfo<void> {
  const DashBordRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashBordRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBordRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i9.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i10.Key? key,
    String? image,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i9.PageInfo<DetailRouteArgs> page =
      _i9.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    this.image,
  });

  final _i10.Key? key;

  final String? image;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i3.FirstNavigatorPage]
class FirstNavigatorRoute extends _i9.PageRouteInfo<void> {
  const FirstNavigatorRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FirstNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstNavigatorRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FirstPage]
class FirstRoute extends _i9.PageRouteInfo<FirstRouteArgs> {
  FirstRoute({
    _i10.Key? key,
    String? email,
    String? image,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          FirstRoute.name,
          args: FirstRouteArgs(
            key: key,
            email: email,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const _i9.PageInfo<FirstRouteArgs> page =
      _i9.PageInfo<FirstRouteArgs>(name);
}

class FirstRouteArgs {
  const FirstRouteArgs({
    this.key,
    this.email,
    this.image,
  });

  final _i10.Key? key;

  final String? email;

  final String? image;

  @override
  String toString() {
    return 'FirstRouteArgs{key: $key, email: $email, image: $image}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    required dynamic Function(bool?) onResultl,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResultl: onResultl,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<LoginRouteArgs> page =
      _i9.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onResultl,
  });

  final _i10.Key? key;

  final dynamic Function(bool?) onResultl;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResultl: $onResultl}';
  }
}

/// generated route for
/// [_i7.SecondsPage]
class SecondsRoute extends _i9.PageRouteInfo<void> {
  const SecondsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SecondsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
