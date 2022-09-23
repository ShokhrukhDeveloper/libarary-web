import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';

import '../widget/appbar_widget/appbar_widget.dart';
import '../widget/category_result_widget/category_result_widget.dart';
import '../widget/product_item_widget.dart';
import '../widget/search_widget/search_widget.dart';
import 'filter_header_widget/filtr_header_widget.dart';
import 'filter_widget/filter_widget.dart';

class FiltrPage extends StatefulWidget {
  const FiltrPage({Key? key}) : super(key: key);

  @override
  State<FiltrPage> createState() => _FiltrPageState();
}

class _FiltrPageState extends State<FiltrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context,constrains) {
          return Column(
            children: [
              const AppBarWidget(),
              const CategoryResultWidget(),
              const SizedBox(height: 10,),
              const SearchWidget(),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      FilterWidget(),
                      SizedBox(height: 30,),
                      FloatingActionButton.extended(
                          onPressed: (){},
                          label: const Text("Tozalash",
                            style: AppTextStyles.text18W400Black,))
                    ],
                  ),
                  Column(
                    children: [
                      FilterHeaderWidget(width: MediaQuery.of(context).size.width,),
                      SizedBox(
                        width: 1300,
                        height:690,
                        child: SingleChildScrollView(
                          child: GridView.builder(
                            shrinkWrap: true,

                              itemCount: 9,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 210/380,
                                  crossAxisCount: 5),
                              itemBuilder:(context,index){
                            return ProductItemWidget();
                              }),
                        ),
                      )

                    ],
                  ),
                ],
              )
            ],

          );
        }
      ),
    );
  }
}
