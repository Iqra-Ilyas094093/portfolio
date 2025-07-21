import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../widgets/TextHeaderWidget.dart';
import '../widgets/dowloadCv.dart';
import '../widgets/imageWidget.dart';
import '../widgets/socialIconsWidget.dart';
import '../widgets/socialSectionWidget.dart';

class Tabletlayout extends StatelessWidget {
  const Tabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.decoration,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18 ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextHeaderWidget(size: size,),
                        const SizedBox(height: 20,),
                        socialTab(size: size,),
                      ],
                    ),
                    Expanded(child: Container(
                      color: Colors.pinkAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageWidget(),
                        ],
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class socialTab extends StatelessWidget {
  final Size size;
  socialTab({super.key,required this.size});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.lightBlueAccent,
      width: size.width * 0.5,
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Dowloadcv(),
          const SizedBox(height: 10,),
          Expanded(child: socialIconsWidget()),
        ],
      ),
    );
  }
}

