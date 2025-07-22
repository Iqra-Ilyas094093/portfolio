import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../tablet/tabletLayout.dart';
import '../widgets/CountWidget.dart';
import '../widgets/TextHeaderWidget.dart';
import '../widgets/imageWidget.dart';

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
