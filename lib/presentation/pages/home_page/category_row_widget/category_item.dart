import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(14)
            ),
          ),
          Align(
            alignment: Alignment.center,
            child:Container(
                height: 160,
                width: 200,
                child: Center(child: Text("dasdasdasdasdasd",textAlign: TextAlign.center,))),
          )
        ],
      ),
    );
  }
}
