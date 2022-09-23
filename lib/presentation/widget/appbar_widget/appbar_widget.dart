

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app_colors/app_colors.dart';
import 'drop_down_language.dart';
import 'sign_in_button.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderGray, width: 1.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterLogo(
            size: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropDownLanguage(),
              SizedBox(width: 10,),
              SignInButton(onPressed: (){},text: "Kirish",),
            ],
          )
        ],
      ),
    );
  }
}
