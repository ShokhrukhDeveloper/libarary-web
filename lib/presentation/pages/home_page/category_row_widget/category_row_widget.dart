import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/app_colors/app_text_styles.dart';
import 'package:referat/presentation/pages/home_page/category_row_widget/swipe_button.dart';

import 'category_item.dart';

class CategoryRowWidget extends StatefulWidget {
  const CategoryRowWidget({Key? key}) : super(key: key);

  @override
  State<CategoryRowWidget> createState() => _CategoryRowWidgetState();
}

class _CategoryRowWidgetState extends State<CategoryRowWidget> {
  final ScrollController controller=ScrollController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
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
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),

                child: ListView(
                  controller: controller,
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children:List.generate(19, (index) => InkWell(
                      onTap: (){},
                      child: CategoryItem()))

                ),
              ),
               Align(
                  alignment: Alignment.centerLeft,
                  child:SwipeButton(child: Icon(Icons.arrow_back_ios, color: AppColors.black,),
                    onTap: (){
                      controller.animateTo(
                        0.0,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 800),
                      );
                    },
                  )),
               Align(
                  alignment: Alignment.centerRight,
                  child:SwipeButton(child: const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.black,),
                    onTap: (){
                      controller.animateTo(
                        controller.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );

                    },
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
