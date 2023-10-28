import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/books/book_item.dart';

import '../../../app_colors/app_text_styles.dart';
class BooksWidget extends StatelessWidget {
  const BooksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SelectableText("Yangi qo'shilganlar",style: AppTextStyles.textButton32Style,),
                  TextButton(
                      onPressed: (){},
                      child: const Text("Barchasi",style: AppTextStyles.textButton32Style,)),
                ],
              ),
              Container(
            height: 400,
            width: double.infinity,
            color: Colors.white,
            child:
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, index) =>const BookItem() ),
                ),


            ),
            ],
          ),
        ),
        Positioned(
          top: 200,
          left: 0,
          child: FloatingActionButton.extended(
            onPressed: () {},
            shape: const CircleBorder(),
            label: const Icon(Icons.arrow_back_ios),
          ),
        ),
        Positioned(
          top: 200,
          right: 0,
          child: FloatingActionButton.extended(
            onPressed: () {},
            shape: const CircleBorder(),
            label: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
