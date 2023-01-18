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

import '../LoginPage/LoginPage.dart' as _i1;
import '../MainFrame/MainFrame.dart' as _i2;
import '../SwipePage/SwipePage.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MainFrameRoute.name: (routeData) {
      final args = routeData.argsAs<MainFrameRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MainFrame(
          key: args.key,
          pageIndex: args.pageIndex,
        ),
      );
    },
    SwipePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SwipePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          MainFrameRoute.name,
          path: '/main-frame',
        ),
        _i4.RouteConfig(
          SwipePageRoute.name,
          path: '/swipe-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i4.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.MainFrame]
class MainFrameRoute extends _i4.PageRouteInfo<MainFrameRouteArgs> {
  MainFrameRoute({
    _i5.Key? key,
    required int pageIndex,
  }) : super(
          MainFrameRoute.name,
          path: '/main-frame',
          args: MainFrameRouteArgs(
            key: key,
            pageIndex: pageIndex,
          ),
        );

  static const String name = 'MainFrameRoute';
}

class MainFrameRouteArgs {
  const MainFrameRouteArgs({
    this.key,
    required this.pageIndex,
  });

  final _i5.Key? key;

  final int pageIndex;

  @override
  String toString() {
    return 'MainFrameRouteArgs{key: $key, pageIndex: $pageIndex}';
  }
}

/// generated route for
/// [_i3.SwipePage]
class SwipePageRoute extends _i4.PageRouteInfo<void> {
  const SwipePageRoute()
      : super(
          SwipePageRoute.name,
          path: '/swipe-page',
        );

  static const String name = 'SwipePageRoute';
}
