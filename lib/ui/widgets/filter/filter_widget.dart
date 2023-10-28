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
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa afAS",
    "Onatiliaa fAS",
    "Onatiliaa fAS",
    "Onatiliaa fAS",
    "Onatiliaa fAS",
    "Onatiliaa fAS",
    "Onatiliaa fASdfasdf asd;fkljasdfbn asdhfasdoghaosidgfiohsadfiohasihodf ",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
      margin: const EdgeInsets.only(left: 15,top: 0,right: 10),
      width: 250,
      padding: const EdgeInsets.only(left: 10,top: 40),
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: AppColors.borderGray),
          borderRadius: BorderRadius.circular(14)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: list.map<Widget>((e) => InkWell(
            onTap: (){},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: e.length.isOdd,
                  onChanged: (e){},
                ),
                SizedBox(
                  width: 200,
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
