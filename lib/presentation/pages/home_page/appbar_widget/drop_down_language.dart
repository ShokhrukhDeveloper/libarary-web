import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';

class DropDownLanguage extends StatelessWidget {
  const DropDownLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 80,
      child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black38,
                width: 1), //border of dropdown button
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              alignment: Alignment.center,

              isExpanded: true,
              value: "🇺🇿 UZ",
              items: const [
                //add items in the dropdown
                DropdownMenuItem(
                  child: Text("🇺🇿 UZ",style: TextStyle(color: Colors.black),),
                  value: "🇺🇿 UZ",
                ),
                DropdownMenuItem(
                  child: Text("🇺🇸 EN",style: TextStyle(color: Colors.black),),
                  value: "en-Us",
                ),
                DropdownMenuItem(
                  child: Text("🇷🇺 RU",style: TextStyle(color: Colors.black),),
                  value: "ru-Ru",
                ),

              ],
              onChanged: (value) {
                //get value when changed
                print("You have selected $value");
              },
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.primary,
              ),
              iconEnabledColor: Colors.white, //Icon color
              style: const TextStyle(
                //te
                  color: Colors.white, //Font color
                  fontSize: 10 //font size on dropdown button
              ),

              // dropdownColor: Colors.redAccent, //dropdown background color
              underline: Container(), //remove underline
              //make true to make width 100%
            ),
          )),
    );
  }
}
