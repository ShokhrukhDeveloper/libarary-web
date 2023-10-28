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
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black54)
        ),
        child: Column(children: [
          Expanded(
            flex: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                "https://picsum.photos/200/300",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                ),
            ),
          ),
            const Divider(),
            Expanded(
              flex: 4,
              child: const Text("Rich dad poor dad asdf",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          
          Expanded(
            flex: 1,
            child: const Text(
              "SIYOSAT, FANTASTIKA ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.text14W400Style,),
          ),

        ]),
      ),
    );
  }
}