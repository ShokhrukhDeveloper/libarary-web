import 'package:flutter/material.dart';
import 'package:referat/ui/widgets/bottom/social_media.dart';

import 'contact_widget.dart';
class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      color: Color(0xfff10182C),
      child:  const Wrap(
        children: [
          SocialMediaWidget(),

          ContactWidget(),
        ],
      ),
    );
  }
}
