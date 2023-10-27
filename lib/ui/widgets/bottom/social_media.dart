import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SelectableText("Ижтимоий тармоқлар",
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
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white,size: 25,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.youtube, color: Colors.white,size: 25,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.white,size: 25,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white,size: 25,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.telegram, color: Colors.white,size: 25,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.tiktok, color: Colors.white,size: 25,)),

          ],
        )
      ],
    );
  }
}
