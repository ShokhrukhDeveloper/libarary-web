import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> list=[
    "Onatili",
    "Onatiliasdf",
    "Onatiliaad fssdf",
    "Onatiliaad fssdf",
    "Onatiliaad fssdf",
    "Onatiliaad fssdf",
    "Onatiliaa fAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa fAS",
    "Onatiliaa fASdfasdf asd;fkljasdfbn asdhfasdoghaosidgfiohsadfiohasihodf ",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 75,top: 20,right: 10),
      width: 300,
      height: 500,
      padding: EdgeInsets.only(left: 40,top: 40),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGray),
        borderRadius: BorderRadius.circular(14),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: list.map<Widget>((e) => InkWell(
            onTap: (){},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(value: e.length.isOdd,onChanged: (e){},),
                 SizedBox(
                  width: 210,
                  child: Text(e,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: true?AppColors.primary:AppColors.black
                    ),
                  ),
                )
              ],
            ),
          )).toList()

          ,
        ),
      ),
    );
  }
}
