import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/books/book_item.dart';

class GridViewBookWidget extends StatelessWidget {
  const GridViewBookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
                    child: GridView.builder(
                            itemCount: 100,
                            shrinkWrap: true,
                            gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                                   maxCrossAxisExtent: 200,
                                childAspectRatio: 2/3
                              ),
                              itemBuilder: (c,i)=>const BookItem()),
                  );
  }
}