import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController? controller;
  const SearchWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      color: Colors.white,
      height: 90,
      width: double.infinity,
      child: Center(
        child: SizedBox(
          width: 400,
          height: 60,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: "Search",
                prefixIcon: const Icon(Icons.keyboard),
                suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          ),
        ),
      ),
    );
  }
}
