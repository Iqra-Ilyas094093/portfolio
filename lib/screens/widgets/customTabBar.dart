import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/project_card.dart';
import 'package:portfolio/screens/widgets/textWidget.dart';

class CustomtabBar extends StatelessWidget {
  final TabController tabController;

  const CustomtabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.36,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: AppColors.ebony,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(text: 'Clones'),
          Tab(text: 'Clones'),
          Tab(text: 'Clones'),
          Tab(text: 'Clones'),
        ],
      ),
    );
  }
}

class customTabBarView extends StatelessWidget {
  final TabController tabController;

  const customTabBarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TabBarView(
      controller: tabController,
      children: [
        AllProjects(size: size),
        AllProjects(size: size),
        AllProjects(size: size),
        AllProjects(size: size),
      ],
    );
  }
}

class AllProjects extends StatelessWidget {
  Size size;

  AllProjects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 3,
          ),
          children: [ProjectCard()],
        ),
      ),
    );
  }
}
