import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Journey extends StatefulWidget {
  const Journey({Key? key}) : super(key: key);

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {

  final List<Map<String, String>> educationData = [
    {
      'date': 'April 2021',
      'title': 'Started The Tech Geeky Journey',
      'description': 'Started with learning Python.',
    },

    {
      'date': 'May 2021',
      'title': 'Got Interested in Making Websites',
      'description': 'Learned HTML, CSS, JavaScript, PHP.',
    },

    {
      'date': 'July 2021',
      'title': 'Explored the world of Hacking',
      'description': 'Learned Kali Linux & the hacking tool in it, Eventually was able to make a phishing website and hack a friends Instagram.',
    },

    {
      'date': 'November 2021',
      'title': 'Blockchain era',
      'description': 'Got Interested in NFT’s and Had an Idea to Make A Blockchain and I Learned and made one!',
    },

    {
      'date': '2022',
      'title': 'Study Time!',
      'description': 'In this period of time I prepared for Entrance Exams.',
    },

    {
      'date': 'Aug 2023',
      'title': 'Back To Work',
      'description': 'Joined SRMIST to Study B.Tech CSE Cyber Security, Came in with a Goal of Making Apps, So Started Learning Java, Ended up Making My First App (This App) on Flutter ',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 20
      ),
        width: context.screenWidth < 900
        ? context.screenWidth * 0.9
            : context.screenWidth < 600
            ? context.screenWidth * 0.5
            : context.screenWidth * 0.4,
        decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),

      padding: const EdgeInsets.all(30.0),
      height: 1400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("My Journey",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
          ),

          const SizedBox(height: 12.0,),

          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              itemCount: educationData.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                final data = educationData[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['date'] ?? '',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.indigo,
                        ),
                        ),
                        Text(
                          data['title'] ?? '',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          data['description'] ?? '',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),

        ],
      ),
    );
  }
}
