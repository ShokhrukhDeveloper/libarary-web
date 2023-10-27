import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  const SearchField({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 40,
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
