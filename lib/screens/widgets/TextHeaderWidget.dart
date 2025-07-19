import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/socialSectionWidget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TextHeaderWidget extends StatelessWidget {
  Size size;
  TextHeaderWidget({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.07,vertical: size.height*0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("I'm Iqra Ilyas",style: TextStyle(fontSize: 26, color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
          GradientText('Flutter Developer', colors: [
            AppColors.studio,
            AppColors.paleSlate,
          ],style: TextStyle(
            fontSize: size.width * 0.040,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(width: size.width * 0.5,
          child: Text('here i am working on my own just wait for the final description to decide and then add it.',style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: 'Poppins'),),),
          Container(
            width: size.width * 0.5,
            child: SocialSectionWidget(),
          )

        ],
      ),
    );
  }
}
