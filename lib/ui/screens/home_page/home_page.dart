import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/books/book_item.dart';
import 'package:referat/ui/widgets/category/category_widget.dart';
import 'package:referat/ui/widgets/header/header_widget.dart';
import '../../widgets/books/books_widget.dart';
import '../../widgets/bottom/bottom_widget.dart';
import '../../widgets/filter/filter_widget.dart';
import '../../widgets/search_widget/search_widget.dart';
import '../../widgets/sub_category/sub_category_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffCDCDCD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const CategoryWidget(),
            const SearchWidget(),
            // Row(
            //   children: [
                

            //   ],
            // ),
            GridView.builder(
              itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                  childAspectRatio: 2/3
                ),
                itemBuilder: (c,i)=>BookItem()),
            // const SubCategory(),
            // const BooksWidget(),
            // Container(color:Colors.white,height: 25,),
            // const BooksWidget(),
            // Container(color:Colors.white,height: 25,),
            // const BooksWidget(),
            Container(height: 100,
            width: double.infinity,
              color: Colors.white,
            ),
            const BottomWidget(),


          ],
        ),
      ),
    );
  }
}
