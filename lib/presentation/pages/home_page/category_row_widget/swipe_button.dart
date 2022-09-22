import 'package:flutter/material.dart';

import '../../../../app_colors/app_colors.dart';
class SwipeButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onTap;
  const SwipeButton({Key? key, this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(left: 30,right: 30),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.black),
            borderRadius: BorderRadius.circular(25),
            color: AppColors.white,
        ),
        child: InkWell(
            onTap: onTap,
            child: child));
  }
}
