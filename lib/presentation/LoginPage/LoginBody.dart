import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 30,
        ),
        Image.asset('assets/images/logo.png'),
        const SizedBox(height: 50),
        Text(
          'Hier kannst du dich einloggen',
          style: theme.textTheme.headline1,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          cursorColor: Colors.white,
          decoration: const InputDecoration(
              labelText: 'E-Mail',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          cursorColor: Colors.white,
          decoration: const InputDecoration(
              labelText: 'E-Mail',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          height: 20,
        ),
        InkResponse(
          onTap: () => {},
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Login',
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          'Du hast noch keinen Account?',
          style: theme.textTheme.bodyText2,
        ),
        Text(
          'Hier kannst du dich registrieren',
          style: theme.textTheme.bodyText2,
        ),
        const SizedBox(
          height: 20,
        ),
        InkResponse(
          onTap: () => {},
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Registrieren',
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
