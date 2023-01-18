import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function callback;
  const CustomButton({Key? key, required this.buttonText, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkResponse(
      onTap: () => callback(),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: theme.textTheme.bodyText1,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
