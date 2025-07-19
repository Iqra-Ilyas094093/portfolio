import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile/mobileLayout.dart';
import 'package:portfolio/screens/tablet/tabletLayout.dart';
import 'package:portfolio/screens/web/desktopLayout.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > 950){
        return Desktoplayout();
      }else if(constraints.maxWidth >600){
        return Tabletlayout();
      }else{
        return Mobilelayout();
      }
    });
  }
}
