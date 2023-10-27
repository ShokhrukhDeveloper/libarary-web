import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(text,
      style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
