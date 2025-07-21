import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../tablet/tabletLayout.dart';
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
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
            child: Column(
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
        ),
      ),
    );
  }
}
