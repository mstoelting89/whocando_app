import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  final Function callback;
  final IconData icon;
  const NavigationIcon({Key? key, required this.callback, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        callback();
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border.symmetric(vertical: BorderSide(width: 1, color: Colors.white),)
        ),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Icon(
              icon,
              color: Colors.white,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}
