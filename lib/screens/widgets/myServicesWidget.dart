import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/textWidget.dart';

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
    return ListView.builder(
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
            padding: EdgeInsets.all(15),
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
            child:
                widget.size.width > 500
                    ? widget.size.width > 500 && widget.size.width < 950
                        ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              sSize: widget.size,
                              text: "${index + 1}",
                              size: 28,
                              color:
                                  isHovered[index] ? Colors.white : Colors.grey,
                            ),
                            SizedBox(width: widget.size.height * 0.04),
                            Container(
                              color: Colors.blue,
                              width: widget.size.width * 0.7,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    sSize: widget.size,
                                    text: "Branding Design",
                                    size: 22,
                                    color:
                                    isHovered[index] ? Colors.white : Colors.grey,
                                  ),
                                  Flexible(
                                    child: TextWidget(
                                      sSize: widget.size,
                                      text:
                                      "We put you ideas and hus your wishes in the form of a unique web project that inspires you and your customers.",
                                      size: 16,
                                      color:
                                      isHovered[index]
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: widget.size.height * 0.025),
                            FaIcon(
                              isHovered[index]
                                  ? FontAwesomeIcons.arrowTrendUp
                                  : FontAwesomeIcons.arrowTrendDown,
                              color:
                              isHovered[index] ? Colors.white : Colors.grey,
                            ),

                          ],
                        )
                        : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              sSize: widget.size,
                              text: "${index + 1}",
                              size: 28,
                              color:
                                  isHovered[index] ? Colors.white : Colors.grey,
                            ),
                            SizedBox(width: widget.size.height * 0.04),
                            TextWidget(
                              sSize: widget.size,
                              text: "Branding Design",
                              size: 22,
                              color:
                                  isHovered[index] ? Colors.white : Colors.grey,
                            ),
                            SizedBox(width: widget.size.height * 0.04),
                            Flexible(
                              child: TextWidget(
                                sSize: widget.size,
                                text:
                                    "We put you ideas and hus your wishes in the form of a unique web project that inspires you and your customers.",
                                size: 16,
                                color:
                                    isHovered[index]
                                        ? Colors.white
                                        : Colors.grey,
                              ),
                            ),
                            SizedBox(width: widget.size.height * 0.04),
                            FaIcon(
                              isHovered[index]
                                  ? FontAwesomeIcons.arrowTrendUp
                                  : FontAwesomeIcons.arrowTrendDown,
                              color:
                                  isHovered[index] ? Colors.white : Colors.grey,
                            ),
                          ],
                        )
                    : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          sSize: widget.size,
                          text: "${index + 1}",
                          size: 28,
                          color: isHovered[index] ? Colors.white : Colors.grey,
                        ),
                        SizedBox(width: widget.size.height * 0.04),
                        TextWidget(
                          sSize: widget.size,
                          text: "Branding Design",
                          size: 22,
                          color: isHovered[index] ? Colors.white : Colors.grey,
                        ),
                        SizedBox(width: widget.size.height * 0.04),
                        Flexible(
                          child: TextWidget(
                            sSize: widget.size,
                            text:
                                "We put you ideas and hus your wishes in the form of a unique web project that inspires you and your customers.",
                            size: 16,
                            color:
                                isHovered[index] ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
          ),
        );
      },
    );
  }
}
