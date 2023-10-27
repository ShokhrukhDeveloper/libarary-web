import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';
class BookItem extends StatelessWidget {
  const BookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black54)
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              "https://picsum.photos/200/300",
              width: 200,
              height: 290,
              fit: BoxFit.cover,
              )),
            const Divider(),
            const Text("Rich dad poor dad ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          const Spacer(),
          const Text(
            "SIYOSAT, FANTASTIKA ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.text14W400Style,),

        ]),
      ),
    );
  }
}