import 'package:app/presentation/router/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/CustomButton.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 100,
        ),
        TextFormField(
          cursorColor: Colors.white,
          decoration: const InputDecoration(
              labelText: 'Wo suchst du?',
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
              labelText: 'Was suchst du?',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(buttonText: 'Zu den Ergebnissen', callback: () => context.router.replace(MainFrameRoute(pageIndex: 1))),
      ],
    );
  }
}
