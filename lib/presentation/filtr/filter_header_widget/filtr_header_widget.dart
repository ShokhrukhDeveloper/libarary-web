import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/app_colors/app_text_styles.dart';
class FilterHeaderWidget extends StatelessWidget {
  const FilterHeaderWidget({Key? key, required this.width}) : super(key: key);
 final double width;
 final bool list=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10,top: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderGray)),
      height: 40,
      width: width<410?width-400:width+5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const Text("    Kitoblar",
            style: AppTextStyles.text16W500Black,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed:(){},icon: const Icon(Icons.grid_view_sharp,)),
              IconButton(onPressed:(){},icon: Icon(Icons.table_rows_rounded,color: list?AppColors.primary:null,)),
            ],
          ),


        ],
      )
    );
  }
}
