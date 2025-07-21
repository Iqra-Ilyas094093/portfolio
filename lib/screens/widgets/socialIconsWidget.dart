import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';

class socialIconsWidget extends StatelessWidget {
  const socialIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        socialIcon(FontAwesomeIcons.linkedinIn),
        const SizedBox(width: 8,),
        socialIcon(FontAwesomeIcons.instagram),
        const SizedBox(width: 8,),
        socialIcon(FontAwesomeIcons.github),
        const SizedBox(width: 8,),
        socialIcon(FontAwesomeIcons.twitter),

      ],
    );
  }
  Widget socialIcon(IconData icon){
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.studio.withOpacity(0.5)),
      ),
      child: Center(
        child:IconButton(onPressed: (){}, icon: FaIcon(icon,color: AppColors.studio,size: 17,)),
      ),
    );
  }
}
