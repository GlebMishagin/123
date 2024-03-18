import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          ShaderMask(
              shaderCallback: (bounds) {
                return const LinearGradient(
                    colors: [Colors.white, Colors.white]).createShader(bounds);
              },
              // blendMode: BlendMode.srcATop,
              child: Image.asset("assets/photo2.png", width: screenHeight / 2)),
          const SizedBox(
            height: 30,
          ),
          //text
          const Text(
            "Hi!\nMy name is Gleb\nA middle Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold)),
            ),
          )
          //btn
        ],
      ),
    );
  }
}
