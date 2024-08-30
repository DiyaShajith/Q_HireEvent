import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Startpage1 extends StatefulWidget {
  const Startpage1({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<Startpage1> createState() => _Startpage1State();
}

class _Startpage1State extends State<Startpage1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset("assets/1.png"),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: CustomColor.scaffoldbg,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              border: Border.all(color: CustomColor.textfieldbg, width: 2),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                    controller: PageController(), // PageController
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor:
                            CustomColor.textfieldbg), // your preferred effect
                    onDotClicked: (index) {}),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Hi!",
                  style: TextStyle(
                      color: CustomColor.blackprimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome to QHire Event!",
                  style: TextStyle(
                      color: CustomColor.blackprimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Look for your dream job, with us.",
                  style: TextStyle(
                      color: CustomColor.blackprimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          backgroundColor: CustomColor.textfieldbg),
                      onPressed: () {},
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: CustomColor.scaffoldbg,
                            fontSize: 20,
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
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: CustomColor.scaffoldbg),
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: CustomColor.textfieldbg1,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
