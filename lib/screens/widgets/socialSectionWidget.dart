import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';

class SocialSectionWidget extends StatelessWidget {
  const SocialSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.studio),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Download CV',style: TextStyle(color: AppColors.studio),),
                SizedBox.square(dimension: 10,),
                FaIcon(FontAwesomeIcons.download,color: AppColors.studio,size: 18,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
