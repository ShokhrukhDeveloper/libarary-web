import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';

import 'category_item.dart';

class CategoryRowWidget extends StatefulWidget {
  const CategoryRowWidget({Key? key}) : super(key: key);

  @override
  State<CategoryRowWidget> createState() => _CategoryRowWidgetState();
}

class _CategoryRowWidgetState extends State<CategoryRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topRight,
            child: TextButton(onPressed: (){}, child: Text("Barchasi",style: AppTextStyles.textButton32Style,))),
        SizedBox(height: 160,

          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 60),
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children:List.generate(19, (index) => CategoryItem())

              ),
            ],
          ),
        ),
      ],
    );
  }
}
