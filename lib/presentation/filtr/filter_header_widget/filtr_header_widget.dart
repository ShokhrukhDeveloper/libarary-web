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
      margin: const EdgeInsets.only(left: 10,right: 70,top: 25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderGray)
      ),
      height: 63,
      width: (width-550)==0?0:(width-550),
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
              IconButton(onPressed:(){},icon: Icon(Icons.grid_view_sharp,)),
              IconButton(onPressed:(){},icon: Icon(Icons.table_rows_rounded,color: list?AppColors.primary:null,)),
            ],
          ),


        ],
      ),


    );
  }
}
