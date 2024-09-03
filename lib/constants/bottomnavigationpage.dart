import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/editview/editpage.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';
import 'package:qhire_event/view/homeview/homepage.dart';
import 'package:qhire_event/view/jobview/job.dart';

class Bottomnavigationpage extends StatefulWidget {
  const Bottomnavigationpage({super.key});

  @override
  State<Bottomnavigationpage> createState() => _BottomnavigationpageState();
}

class _BottomnavigationpageState extends State<Bottomnavigationpage> {
  int pageIndex = 0;
  final pages = [
    const Homepage(),
    const Eventupcoming(),
    const Job(),
    const Editpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
