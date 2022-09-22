import 'package:flutter/material.dart';
import 'package:referat/presentation/pages/home_page/appbar_widget/appbar_widget.dart';
import 'package:referat/presentation/pages/home_page/category_row_widget/category_row_widget.dart';
import 'package:referat/presentation/pages/home_page/search_widget/search_widget.dart';

import 'category_result_widget/category_result_widget.dart';
import 'product_row_widget/product_row_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AppBarWidget(),
            CategoryResultWidget(),
            SizedBox(height: 10,),
            SearchWidget(),
            SizedBox(height: 30,),
            CategoryRowWidget(),
            SizedBox(height: 30,),
            ProductRowWidget()



          ],
        ),
      ),
    );
  }
}