import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/presentation/pages/home_page/appbar_widget/sign_in_button.dart';

import 'drop_down_language.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderGray, width: 1.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterLogo(
            size: 30,
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
