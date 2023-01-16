import 'package:app/presentation/LoginPage/LoginPage.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true)
  ]
)

class $AppRouter {}