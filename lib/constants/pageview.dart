import 'package:flutter/material.dart';
import 'package:qhire_event/view/getstarted/startpage1.dart';
import 'package:qhire_event/view/getstarted/startpage2.dart';
import 'package:qhire_event/view/getstarted/startpage3.dart';

class Pageviewcustom extends StatefulWidget {
  const Pageviewcustom({super.key});

  @override
  State<Pageviewcustom> createState() => _PageviewcustomState();
}

class _PageviewcustomState extends State<Pageviewcustom> {
  final pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Startpage1(
            pageController: pageController,
          ),
          Startpage2(
            pageController: pageController,
          ),
          Startpage3(
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
