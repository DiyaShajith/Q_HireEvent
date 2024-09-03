import 'package:flutter/material.dart';
import 'package:qhire_event/constants/pageview.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';
import 'package:qhire_event/view/jobview/jobpage.dart';
import 'package:qhire_event/view/registerview/login.dart';
import 'package:qhire_event/view/registerview/registerfield.dart';

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
      home: Eventcancelled(),
    );
  }
}
