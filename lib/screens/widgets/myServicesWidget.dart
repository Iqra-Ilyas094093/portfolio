import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Myserviceswidget extends StatefulWidget {
  final Size size;

  Myserviceswidget({super.key, required this.size});

  @override
  State<Myserviceswidget> createState() => _MyserviceswidgetState();
}

class _MyserviceswidgetState extends State<Myserviceswidget> {
  List<bool> isHovered = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter:
                (_) => setState(() {
                  isHovered[index] = true;
                }),
            onExit:
                (_) => setState(() {
                  isHovered[index] = false;
                }),
            child: AnimatedContainer(
              padding: EdgeInsets.all(5),
              curve: Curves.easeInOut,
              margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.015),
              duration: Duration(microseconds: 300),
              height: widget.size.height * 0.18,
              width: widget.size.width,
              decoration: BoxDecoration(
                color: isHovered[index] ? null : Colors.transparent,
                gradient:
                    isHovered[index]
                        ? LinearGradient(
                          colors: [AppColors.studio, AppColors.ebony],
                        )
                        : null,
                border: Border.all(
                  color:
                      isHovered[index]
                          ? AppColors.studio.withOpacity(0.5)
                          : Colors.transparent,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
