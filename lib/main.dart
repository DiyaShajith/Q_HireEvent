import 'package:flutter/material.dart';
import 'package:qhire_event/constants/pageview.dart';

import 'package:qhire_event/view/getstarted/startpage1.dart';
import 'package:qhire_event/view/getstarted/startpage2.dart';
import 'package:qhire_event/view/getstarted/startpage3.dart';
import 'package:qhire_event/view/welcomescreen/screen1.dart';
import 'package:qhire_event/view/welcomescreen/screen2.dart';

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
      home: Pageviewcustom(),
    );
  }
}
