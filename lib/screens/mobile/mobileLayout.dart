import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../tablet/tabletLayout.dart';
import '../widgets/CountWidget.dart';
import '../widgets/TextHeaderWidget.dart';
import '../widgets/imageWidget.dart';
import '../widgets/myServicesWidget.dart';

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({super.key});

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
                margin: EdgeInsets.only(top: size.height * 0.18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.pinkAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ImageWidget()],
                      ),
                    ),
                    SizedBox(height: size.width * 0.09,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextHeaderWidget(size: size),
                            const SizedBox(height: 20),
                            socialTab(size: size),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05,),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Countwidget(size: size, text1: '14', text2: 'Years of', text3: 'Experience'),
                        Countwidget(size: size, text1: '50+', text2: 'Projects', text3: 'Completed'),
                      ],
                    ),
                    SizedBox(height: size.height * 0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Countwidget(size: size, text1: '1.5k', text2: 'Happy', text3: 'Customers'),
                        Countwidget(size: size, text1: '1M', text2: 'Awesome', text3: 'Reviews'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05,),
              Container(
                width: double.infinity,
                color: AppColors.ebony,
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.02,),
                    GradientText('My Quality Services', colors: [AppColors.studio, AppColors.paleSlate],
                      style: TextStyle(
                        fontSize: size.width * 0.040,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: size.height * 0.02,),
                    Text('We put our ideas and your wishes in the form of a unique project to elaborate our work for you.',style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: size.width* 0.02,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),),
                    SizedBox(height: size.height * 0.02,),
                    Myserviceswidget(size: size),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
