import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/books/book_item.dart';
import 'package:referat/ui/widgets/bottom/bottom_widget.dart';
import 'package:referat/ui/widgets/category/category_widget.dart';
import 'package:referat/ui/widgets/filter/filter_widget.dart';
import 'package:referat/ui/widgets/grid_view_book/grid_view_book_widget.dart';
import 'package:referat/ui/widgets/header/header_widget.dart';
import 'package:referat/ui/widgets/search_widget/search_widget.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LimitedBox(
          maxHeight: 2000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                const Header(),
                const CategoryWidget(),
                const SearchWidget(),
                                
                //  GridViewBookWidget(),
                 Flexible(
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30),
                     child: ListView.builder(
                         // controller: scrollController,
                         itemCount: 101,
                         itemBuilder: (c, i) {
                           return Container(
                            
                             child: Card(
                               child: ListTile(
                                 onTap: () async {
                                   // _launchInBrowser(Uri.parse(
                                   //     "http://localhost:5082/file/${books[i].fileName}"));
                                 },
                                 leading: const Icon(Icons.picture_as_pdf),
                                 title: Text( "asdsadaa ef aser adrgaa a sdasd"),
                                 subtitle: SelectableText( "Siyosat ba barqararolik"),
                                 trailing: IconButton(
                                   icon: const Icon(Icons.download),
                                   onPressed: () {
                                     // downloadFile(
                                     //     "http://localhost:5082/file/${books[i].fileName}");
                                   },
                                 ),
                               ),
                             ),
                           );
                         }),
                   ),
                 ),
            const BottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}