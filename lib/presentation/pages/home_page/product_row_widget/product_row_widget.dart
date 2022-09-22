
import 'package:flutter/material.dart';

import '../../../widget/product_item_widget.dart';
import '../category_row_widget/category_item.dart';

class ProductRowWidget extends StatefulWidget {
  const ProductRowWidget({Key? key}) : super(key: key);

  @override
  State<ProductRowWidget> createState() => _ProductRowWidgetState();
}

class _ProductRowWidgetState extends State<ProductRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),

      child: SizedBox(
        height: 300,
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children:List.generate(19, (index) => InkWell(
                onTap: (){},
                child: ProductItemWidget()))

        ),
      ),
    );
  }
}
