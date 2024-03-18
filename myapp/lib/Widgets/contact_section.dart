import 'package:flutter/material.dart';
import 'package:myapp/constans/size.dart';
import 'package:myapp/constans/sns_links.dart';

import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.white,
      child: Column(
        children: [
          //title
          const Text(
            "Get in touch",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blue),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              })),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTestField(
              hintText: "Your message",
              maxLines: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //send button

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Get in touch",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(color: Colors.white)))),
          ),
          const SizedBox(
            height: 30,
          ),
          //sns
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SNSLinks.github]);
                },
                child: Image.asset(
                  "github.png",
                  width: 35,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SNSLinks.telegram]);
                },
                child: Image.asset(
                  "telegram.png",
                  width: 35,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SNSLinks.instagram]);
                },
                child: Image.asset(
                  "instagram.png",
                  width: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(child: CustomTestField(hintText: "Your Name")),
        SizedBox(
          width: 15,
        ),
        Flexible(child: CustomTestField(hintText: "Email")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(child: CustomTestField(hintText: "Your Name")),
        SizedBox(
          height: 15,
        ),
        Flexible(child: CustomTestField(hintText: "Email")),
      ],
    );
  }
}
