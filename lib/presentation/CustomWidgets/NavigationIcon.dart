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
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          )
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
