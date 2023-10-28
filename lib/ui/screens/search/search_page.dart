import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/books/book_item.dart';
import 'package:referat/ui/widgets/bottom/bottom_widget.dart';
import 'package:referat/ui/widgets/category/category_widget.dart';
import 'package:referat/ui/widgets/filter/filter_widget.dart';
import 'package:referat/ui/widgets/header/header_widget.dart';
import 'package:referat/ui/widgets/search_widget/search_widget.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LimitedBox(
          maxHeight: 3000,
          child: Column(
            children: [
                const Header(),
                const CategoryWidget(),
                const SearchWidget(),
              Expanded(
                child: Row(children: [
                  const FilterWidget(),
                  Expanded(
                    child: GridView.builder(
                          itemCount: 10,
                            shrinkWrap: true,
                            gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                              childAspectRatio: 2/3
                            ),
                            itemBuilder: (c,i)=>BookItem()),
                  ),
                ]),
              ),
            
               const BottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}