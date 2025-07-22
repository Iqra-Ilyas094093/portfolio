import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/tablet/tabletLayout.dart';
import 'package:portfolio/screens/widgets/CountWidget.dart';
import 'package:portfolio/screens/widgets/imageWidget.dart';
import 'package:portfolio/screens/widgets/myServicesWidget.dart';
import 'package:portfolio/screens/widgets/socialSectionWidget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../widgets/TextHeaderWidget.dart';

class Desktoplayout extends StatelessWidget {
  const Desktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.decoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        TextHeaderWidget(size: size,),
                        SizedBox(height: 20,),
                        SocialSectionWidget(size: size),
                      ],
                    ),
                    Expanded(child: Container(
                      child: Column(
                        children: [
                          ImageWidget(),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Countwidget(size: size, text1: '14', text2: 'Years of', text3: 'Experience'),
                    Countwidget(size: size, text1: '50+', text2: 'Projects', text3: 'Completed'),
                    Countwidget(size: size, text1: '1.5k', text2: 'Happy', text3: 'Customers'),
                    Countwidget(size: size, text1: '1M', text2: 'Awesome', text3: 'Reviews'),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.18,),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(
                  children: [
                    GradientText('My Quality Services', colors: [AppColors.studio, AppColors.paleSlate],
                      style: TextStyle(
                        fontSize: size.width * 0.040,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: size.height * 0.02,),
                    Text('We put our ideas and your wishes in the form of a unique project to elaborate our work for you.',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: size.width* 0.012,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),),
                    SizedBox(height: size.height * 0.02,),
                    Myserviceswidget(size: size),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
