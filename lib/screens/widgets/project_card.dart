import 'package:flutter/cupertino.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/textWidget.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_)=> _onHover(true),
      onExit: (_)=> _onHover(false),
      child: Container(
        height: size.width *  0.10,
        width: size.width * 0.10,
        decoration: BoxDecoration(
          color: AppColors.ebony.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Image.asset('assets/images/project.png'),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(duration: Duration(microseconds: 400),curve: Curves.linear,
              height: isHovered?size.height*0.15:0,
              width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.studio
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                            child: TextWidget(sSize: size,text: 'App Developement',size: 18,),
                          ),
                        ),
                      )
                    ],
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _onHover(bool _isHovered){
    setState(() {
      isHovered = _isHovered;
    });
  }
}
