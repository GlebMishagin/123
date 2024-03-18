import 'package:flutter/material.dart';
import 'package:myapp/utils/projects_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 260,
      height: 290,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 90, 177, 248)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.tittle,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          //footer
          const Spacer(),
          Container(
            color: Color.fromARGB(255, 60, 149, 222),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "You can see on: ",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.webLink]);
                    },
                    child: Image.asset(
                      "assets/web.png",
                      width: 17,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
