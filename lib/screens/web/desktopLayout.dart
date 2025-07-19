import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';

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
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          TextHeaderWidget(size: size,),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
