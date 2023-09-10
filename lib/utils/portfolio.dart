import 'package:flutter/material.dart';
import 'package:portfolio/components/about.dart';
import 'package:portfolio/components/journey.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  
  List<Widget> navItems = [];
  bool isMobile = false;

  final skillKey = GlobalKey();
  final journeyKey = GlobalKey();
  final aboutKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(aboutKey.currentContext!);
            },
            child: Text("About")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(journeyKey.currentContext!);
            },
            child: Text("Journey")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!);
            },
            child: Text("Skills")),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        appBar: AppBar(
            title: Text("Sushant Chavan"),
            actions: isMobile ? null : navItems,
        ),
        drawer: isMobile
            ? Drawer (
                child: ListView(
                    children: navItems,
            ),
        )
        : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [
                  Image.asset("assets/Lin.png"),
                  About(
                    key: aboutKey,
                  ),
                  Journey(
                    key: journeyKey,
                  ),
                ],
              ),

              Skills(
                key: skillKey,
              ),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}