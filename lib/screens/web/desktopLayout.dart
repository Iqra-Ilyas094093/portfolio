import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/tablet/tabletLayout.dart';
import 'package:portfolio/screens/widgets/CountWidget.dart';
import 'package:portfolio/screens/widgets/imageWidget.dart';
import 'package:portfolio/screens/widgets/socialSectionWidget.dart';

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
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  children: [
                    Countwidget(size: size, text1: '14', text2: 'Years of', text3: 'Experience'),
                    Countwidget(size: size, text1: '50+', text2: 'Projects', text3: 'Completed'),
                    Countwidget(size: size, text1: '1.5k', text2: 'Happy', text3: 'Customers'),
                    Countwidget(size: size, text1: '1M', text2: 'Awesome', text3: 'Reviews'),
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
