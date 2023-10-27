import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText("Боғланиш",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
          TextButton(
            onPressed: (){},
            child: Text("+998 90 253 77 53",
              style: TextStyle(color: Colors.white24),),
          ),
            SizedBox(width: 10,),
            TextButton(
              onPressed: (){},
              child: Text("support@liber.uz",
            style: TextStyle(color: Colors.white24),
            ),
          ),

          ],
        )
      ],
    );
  }
}
