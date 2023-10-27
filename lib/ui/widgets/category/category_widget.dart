import 'package:flutter/material.dart';

import 'category_button.dart';
class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
      margin: const EdgeInsets.only(top: 2),
      height: 48,
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          CategoryButton(text: 'Barchasi',),
          CategoryButton(text: 'Referat',),
          CategoryButton(text: 'Kurs ishlari',),
          CategoryButton(text: 'Diplom ishlari',),
          CategoryButton(text: 'Kitoblar',),
        ],
      ),
    );
  }
}
