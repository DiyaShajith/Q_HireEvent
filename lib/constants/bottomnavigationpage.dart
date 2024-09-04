import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/editview/editpage.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';
import 'package:qhire_event/view/homeview/homepage.dart';
import 'package:qhire_event/view/jobview/job.dart';

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
    // const Eventcancelled(),
    const Job(),
    const Editpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: CustomColor.textfieldbg,
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(
              Icons.home_outlined,
              size: 32,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.event),
            icon: Icon(
              Icons.event,
              size: 32,
            ),
            label: 'Event',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.work_outline),
            icon: Icon(
              Icons.work_outline,
              size: 32,
            ),
            label: 'Jobs',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2_outlined),
            icon: Icon(
              Icons.person_2_outlined,
              size: 32,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
