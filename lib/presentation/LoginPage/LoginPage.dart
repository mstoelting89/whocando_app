import 'package:flutter/material.dart';

import 'LoginBody.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomLeft,
                colors: [theme.colorScheme.onPrimary, Colors.white]),
      ),
      child: Scaffold(
        body: LoginBody(),
      )
    );
  }
}
