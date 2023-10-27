import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      height: 90,
      width: double.infinity,
      color: Colors.white,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterLogo(size: 55,),
          Container(height: 48,width: 120,
          decoration: BoxDecoration(
            color: Color(0xff64C962),
            borderRadius: BorderRadius.circular(14),
          ),
            child: Center(child: Text("Kirish",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            )),
          )
        ],
      ),
      // child: ,
    );
  }
}
