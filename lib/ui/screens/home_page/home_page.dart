import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/category/category_widget.dart';
import 'package:referat/ui/widgets/header/header_widget.dart';

import '../../../presentation/widget/search_widget/search_widget.dart';
import '../../widgets/sub_category/sub_category_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffCDCDCD),
      body: Column(
        children: [
          Header(),
          CategoryWidget(),
          SearchWidget(),
          SubCategory(),

        ],
      ),
    );
  }
}
