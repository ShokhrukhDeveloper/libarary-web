import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController? controller;
  const SearchWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: "Search",
            prefixIcon: Icon(Icons.keyboard),
            suffixIcon: Icon(Icons.search),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
      ),
    );
  }
}
