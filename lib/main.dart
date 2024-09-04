import 'package:flutter/material.dart';
import 'package:qhire_event/constants/bottomnavigationpage.dart';
import 'package:qhire_event/constants/pageview.dart';
import 'package:qhire_event/view/editview/editpage.dart';
import 'package:qhire_event/view/getstarted/startpage1.dart';
import 'package:qhire_event/view/homeview/homepage.dart';
import 'package:qhire_event/view/profileview/profilepage.dart';
import 'package:qhire_event/view/resumeview/resume.dart';
import 'package:qhire_event/view/skillview/skill.dart';
import 'package:qhire_event/view/certificateview/certificatepage.dart';
import 'package:qhire_event/view/eventview/event.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';
import 'package:qhire_event/view/jobview/job.dart';
import 'package:qhire_event/view/jobview/jobpage.dart';
import 'package:qhire_event/view/qualificationview/qualification.dart';
import 'package:qhire_event/view/registerview/login.dart';
import 'package:qhire_event/view/registerview/registerfield.dart';
import 'package:qhire_event/view/welcomescreen/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
