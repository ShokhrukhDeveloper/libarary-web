import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/sub_category/sub_category_item.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      height: 200,
      color: Colors.white,
      child:
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 21,
                itemBuilder: (c, cc) => const SubCategoryItem()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FloatingActionButton.extended(
              onPressed: () {},
              shape: const CircleBorder(),
              label: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton.extended(
              onPressed: () {},
              shape: const CircleBorder(),
              label: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
