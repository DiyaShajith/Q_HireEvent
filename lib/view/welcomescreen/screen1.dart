import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset("assets/4.png"),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: CustomColor.scaffoldbg,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(200),
                topRight: Radius.circular(200),
              ),
              border: Border.all(color: CustomColor.textfieldbg, width: 2),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Spacer(),
                const Text(
                  "Hello!",
                  style: TextStyle(
                      color: CustomColor.blackprimary,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Your personalized gateway to success starts here with our job finder app's welcome screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CustomColor.blackprimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: CustomColor.scaffoldbg),
                      onPressed: () {},
                      child: const Text(
                        "I\'m a Job Seeker",
                        style: TextStyle(
                            color: CustomColor.textfieldbg,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: CustomColor.textfieldbg),
                      onPressed: () {},
                      child: const Text(
                        "I\'m a Recruiter",
                        style: TextStyle(
                            color: CustomColor.scaffoldbg,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
