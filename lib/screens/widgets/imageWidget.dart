import 'package:flutter/cupertino.dart';
import 'package:portfolio/constants/colors.dart';
import 'dart:math' as math;

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter:
          (_) => setState(() {
            isHovered = true;
          }),
      onExit:
          (_) => setState(() {
            isHovered = false;
          }),
      child: AnimatedScale(
        scale: isHovered ? 1.07 : 1.0,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        child: AnimatedContainer(
          duration: Duration(microseconds: 300),
          height: size.width * 0.25,
          curve: isHovered ? Curves.easeInOut : Curves.ease,
          width: size.width * 0.22,
          // transform: Matrix4.rotationZ(math.pi/12 ),
          decoration: BoxDecoration(
            boxShadow:
                isHovered
                    ? [
                      BoxShadow(
                        color: AppColors.studio,
                        blurRadius: 12,
                        spreadRadius: 3,
                      ),
                    ]
                    : [
                      BoxShadow(
                        color: AppColors.studio.withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.studio, width: 1.2),
          ),
          // clipBehavior: Clip.hardEdge,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/profilePic.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
