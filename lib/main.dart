import 'package:flutter/material.dart';
import 'package:qhire_event/constants/bottomnavigationpage.dart';
import 'package:qhire_event/constants/filtersheet.dart';
import 'package:qhire_event/constants/pageview.dart';
import 'package:qhire_event/view/homeview/homepage.dart';

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
      home: const Pageviewcustom(),
    );
  }
}
