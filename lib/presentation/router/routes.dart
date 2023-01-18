import 'package:app/presentation/LoginPage/LoginPage.dart';
import 'package:app/presentation/MainFrame/MainFrame.dart';
import 'package:app/presentation/SwipePage/SwipePage.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: MainFrame, initial: false),
    AutoRoute(page: SwipePage, initial: false),
  ]
)

class $AppRouter {}