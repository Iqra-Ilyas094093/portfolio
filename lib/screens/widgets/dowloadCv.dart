import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class Dowloadcv extends StatelessWidget {
  const Dowloadcv({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.paleSlate),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Download CV',style: TextStyle(color: Colors.white),),
          SizedBox.square(dimension: 10,),
          FaIcon(FontAwesomeIcons.download,color: Colors.white,size: 18,)
        ],
      ),
    );
  }
}
