import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
     
      width: double.infinity,
      color: Colors.white,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.bookJournalWhills, color: Colors.purple,size: 35,)),
          Container(height: 38,width: 100,
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
