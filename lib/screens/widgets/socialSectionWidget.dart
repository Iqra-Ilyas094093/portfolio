import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/dowloadCv.dart';
import 'package:portfolio/screens/widgets/socialIconsWidget.dart';

class SocialSectionWidget extends StatelessWidget {
  Size size;
  SocialSectionWidget({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
        width: size.width * 0.5,
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Dowloadcv(),
          const SizedBox(width: 20,),
          Expanded(child: socialIconsWidget()),
        ],
      ),
    );
  }
}
