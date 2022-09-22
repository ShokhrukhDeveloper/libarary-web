import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(image: CachedNetworkImageProvider("https://picsum.photos/200/300"),
                 fit: BoxFit.cover
              )
            ),
          ),
           Align(
            alignment: Alignment.topCenter,
            child:SizedBox(
                height: 130,
                width: 200,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Бизнес ва психология",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.style18w600white))),
          ),

        ],
      ),
    );
  }
}
