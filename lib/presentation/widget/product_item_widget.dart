import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/app_colors/app_text_styles.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.all(10),
      height: 410,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.grey.withOpacity(0.3))
      ),

      child: Column(
        children: [
          SizedBox(
            width: 200, height: 300,
            child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: CachedNetworkImage(imageUrl: "https://picsum.photos/200/300",
                    fit: BoxFit.cover,
                  ),
                ),
          ),
          const SizedBox(height: 10,),
           Container(

            width: 200,
            height:50 ,
            child: Text("Rich dad fgvsdfgpoor dad",
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.textBold20Style,
            ),
          ),
          const SizedBox(height: 8,),
           Container(
            height: 18,
           width: 200,
           child: Text(
             "SIYOSAT, FANTASTIKA ",
           overflow: TextOverflow.ellipsis,
           style: AppTextStyles.text14W400Style,),
           ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star,color: AppColors.secondary, size: 30,),
                  SizedBox(width:10 ,),
                  Text("4.7",
                  style: AppTextStyles.text28W700Style,
                  )
                ],
              ),
              Icon(Icons.bookmark_border_outlined,size: 30,color: AppColors.grey,)
              
            ],
          )
        ],
      )

    );
  }
}
