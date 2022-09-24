import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_text_styles.dart';

import '../widget/appbar_widget/appbar_widget.dart';
import '../widget/category_result_widget/category_result_widget.dart';
import '../widget/product_item_widget.dart';
import '../widget/search_widget/search_widget.dart';
import 'filter_header_widget/filtr_header_widget.dart';
import 'filter_widget/filter_widget.dart';
import 'filtr_list_widget/serach_item_list_widget.dart';

class FiltrPage extends StatefulWidget {
  const FiltrPage({Key? key}) : super(key: key);

  @override
  State<FiltrPage> createState() => _FiltrPageState();
}

class _FiltrPageState extends State<FiltrPage> {
  var list=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context,constrains) {
          return Column(
            children: [
              //40
              const AppBarWidget(),
              //30
              const CategoryResultWidget(),
              //5
              const SizedBox(height: 5,),
              //40
              const SearchWidget(),
              //5
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: constrains.maxWidth>510,
                    child: SizedBox(
                    width: 300,
                    height: constrains.maxHeight-120,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Expanded(child: FilterWidget()),
                        const SizedBox(height: 15,),
                        FloatingActionButton.extended(
                            onPressed: (){},
                            label: const Text("Tozalash",
                              style: AppTextStyles.text18W400Black,)),
                        const SizedBox(height: 50,),
                      ],
                    ),
                  ),
                  ),

                  Visibility(
                    visible: constrains.maxWidth>310,
                    child: SizedBox(
                      width: constrains.maxWidth-300,
                      height: constrains.maxHeight-121,
                      child: Column(
                        children: [
                          //40
                          FilterHeaderWidget(width: constrains.maxWidth),

                          SizedBox(
                            height: constrains.maxHeight-170,
                            width: constrains.maxWidth-300,
                            child: ListView.builder(

                              itemCount: 40,
                            shrinkWrap: true,
                                itemBuilder: (context, index) {

                              return FiltrListItemWidget();
                            }),
                          )

                          // Expanded(
                          //   child: GridView.builder(
                          //     itemCount: 50,
                          //       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                          //           crossAxisCount: (constrains.maxWidth-310)~/160,
                          //         crossAxisSpacing: 3,
                          //         mainAxisSpacing: 3,
                          //         childAspectRatio: 1/2,
                          //
                          //       ),
                          //   shrinkWrap: true,
                          //           // crossAxisSpacing: 3,
                          //           // mainAxisSpacing: 3,
                          //           // childAspectRatio: 1/2,
                          //     // crossAxisCount: (constrains.maxWidth-310)~/160,
                          //       itemBuilder: (c,i)=>
                          //
                          //         ProductItemWidget(),
                          //   ),
                          // )

                        ],
                      ),
                    ),
                  )

                ],
              )
            ],

          );
        }
      ),
    );
  }
}
