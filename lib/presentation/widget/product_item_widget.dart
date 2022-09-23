import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/app_colors/app_text_styles.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.all(3),
        height: 300,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey.withOpacity(0.3))
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SizedBox(
              width: 140, height: 200,
              child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: CachedNetworkImage(imageUrl: "https://picsum.photos/200/300",
                      fit: BoxFit.cover,
                    ),
                  ),
            ),
            const SizedBox(height: 3,),
             Container(
              width: 140,
              height:45 ,
              child: Text("Rich dad fgvsdfgpoor dad",

                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.textBold20Style,
              ),
            ),
            // const SizedBox(height: 8,),
             Container(
              height: 10,
             width: 140,
             child: Text(
               "SIYOSAT, FANTASTIKA ",
             overflow: TextOverflow.ellipsis,
             style: AppTextStyles.text14W400Style,),
             ),
            // const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.star,color: AppColors.secondary, size: 20,),
                    SizedBox(width:5 ,),
                    Text("4.7",
                    style: AppTextStyles.text28W700Style,
                    )
                  ],
                ),
                Icon(Icons.bookmark_border_outlined,size: 20,color: AppColors.grey,)

              ],
            )
          ],
        )

      ),
    );
  }
}
