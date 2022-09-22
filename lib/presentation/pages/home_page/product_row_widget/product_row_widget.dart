import 'package:flutter/material.dart';
import 'package:referat/presentation/widget/product_item_widget.dart';

import '../../../../app_colors/app_colors.dart';
import '../../../../app_colors/app_text_styles.dart';
import '../category_row_widget/swipe_button.dart';

class ProductRowWidget extends StatelessWidget {
   ProductRowWidget({Key? key, required this.name}) : super(key: key);
  final ScrollController controller=ScrollController();
  final String name;
   @override
  Widget build(BuildContext context) {

    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text("$name",style: AppTextStyles.textButton32Style,)),
              TextButton(
                  onPressed: (){},
                  child: Text("Barchasi",style: AppTextStyles.textButton32Style,)),
            ],
          ),
          SizedBox(
            height: 455,
            child: Stack(
              children: [
                ListView(
                    controller: controller,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children:List.generate(19, (index) => InkWell(
                        onTap: (){},
                        child: ProductItemWidget()))

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
      ),

    );
  }
}
