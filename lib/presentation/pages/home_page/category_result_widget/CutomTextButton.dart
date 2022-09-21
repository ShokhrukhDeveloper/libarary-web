import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomTextButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: onPressed, child: Text(text,style: AppTextStyles.textButtonStyle,)),
    );
  }
}


