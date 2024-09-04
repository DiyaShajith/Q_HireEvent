import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/editview/editpage.dart';
import 'package:qhire_event/view/eventview/event.dart';
import 'package:qhire_event/view/eventview/event_view.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';
import 'package:qhire_event/view/homeview/homepage.dart';
import 'package:qhire_event/view/jobview/job.dart';
import 'package:qhire_event/view/profileview/profilepage.dart';

class Bottomnavigationpage extends StatefulWidget {
  const Bottomnavigationpage({super.key});

  @override
  State<Bottomnavigationpage> createState() => _BottomnavigationpageState();
}

class _BottomnavigationpageState extends State<Bottomnavigationpage> {
  int currentPageIndex = 0;

  final pages = [
    const Homepage(),
    const Eventupcoming(),
    const Job(),
    const Editpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(children: [
          Homepage(),
          EventView(),
          Job(),
          ProfileView(),
        ]),
        bottomNavigationBar: TabBar(
          labelColor: CustomColor.textfieldbg,
          indicatorColor: CustomColor.textfieldbg,
          indicatorWeight: 5,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                size: 32,
              ),
              text: "Home",
            ),
            Tab(
              icon: Icon(
                Icons.event,
                size: 32,
              ),
              text: "Event",
            ),
            Tab(
              icon: Icon(
                Icons.work,
                size: 32,
              ),
              text: "Job",
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
