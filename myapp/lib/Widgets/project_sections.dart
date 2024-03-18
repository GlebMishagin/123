import 'package:flutter/material.dart';
import 'package:myapp/Widgets/project_card.dart';
import 'package:myapp/utils/projects_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context)
        .size
        .width; // final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Work projects",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectsUtils.length; i++)
                  ProjectCardWidget(project: workProjectsUtils[i]),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Hobby projects",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectsUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectsUtils[i]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
