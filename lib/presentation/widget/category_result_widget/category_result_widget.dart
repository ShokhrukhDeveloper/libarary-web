import 'package:flutter/cupertino.dart';
import 'package:referat/app_colors/app_colors.dart';

import 'CutomTextButton.dart';

class CategoryResultWidget extends StatefulWidget {
  const CategoryResultWidget({Key? key}) : super(key: key);

  @override
  State<CategoryResultWidget> createState() => _CategoryResultWidgetState();
}

class _CategoryResultWidgetState extends State<CategoryResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: AppColors.borderGray))
      ),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 30,),
          CustomTextButton(text: 'Referatlar', onPressed: () {  },),
          CustomTextButton(text: 'Kurs ishlari', onPressed: () {  },),
          CustomTextButton(text: 'Diplom ishlari', onPressed: () {  },),
          CustomTextButton(text: 'Kitoblar', onPressed: () {  },),
          SizedBox(width: 30,),
          SizedBox(width: 30,),
        ],
      ),
    );
  }
}
