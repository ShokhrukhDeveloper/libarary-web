import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const SignInButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onPressed,
        child: Row(
          children: [
            Icon(Icons.person),
            Text(text)
          ]
        ),
    style: ButtonStyle(
      backgroundColor:  MaterialStateProperty.all(AppColors.primary),
      animationDuration: Duration(seconds: 1),

    ),
    );
  }
}
