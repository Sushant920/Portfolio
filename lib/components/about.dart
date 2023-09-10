import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 20
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 600
            ? context.screenWidth * 0.3
            : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),

      padding: EdgeInsets.all(30.0),
      height: 350.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "About Me",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                  "I am an Ambitious and driven UG student pursuing Computer Science Engineering with Specialisation in Cyber Security at SRM University, Kattankulathur, I have a deep understanding of the latest software development trends and a passion for innovation. I Aspire to Seek Experience in the field of App Development, AI, ML, AR, VR, Cyber Security & Business Development, Entrepreneurship to Understand and Learn more about Business Building and Growing it. Apart From That, I love Cycling And Exploring The Unexplored.",
                  textAlign: TextAlign.start,
              ),

            ],
          ),



        ],
      ),
    );
  }
}
