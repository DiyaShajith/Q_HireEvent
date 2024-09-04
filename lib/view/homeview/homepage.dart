import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; // Corrected method to get screen size
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldbg,
        title: Text(
          "LOGO",
          style: TextStyle(
              color: CustomColor.textfieldbg,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.bookmark_border_outlined,
                color: CustomColor.textfieldbg,
                size: 32,
              ),
              SizedBox(width: 16), // Added padding between icons
              Icon(
                Icons.notifications,
                color: CustomColor.textfieldbg,
                size: 32,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: size.width,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              border: Border.all(color: CustomColor.textfieldbg1, width: 1),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.keyboard_voice,
                                color: CustomColor.textfieldbg,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: CustomColor.textfieldbg,
                              ),
                              hintText: "Job title, Keyboard, or Company",
                              hintStyle: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: CustomColor.textfieldbg1,
                                      width: 0.5))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: size.width * 0.1,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: CustomColor.textfieldbg1, width: 1.5),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: CustomColor.textfieldbg,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: CustomColor.textfieldbg,
                      size: 32,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Calicut, Kerala",
                      style: TextStyle(
                          color: CustomColor.uploadbg,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          width: size.width * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColor.textfieldbg1.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_alarm_sharp,
                                color: CustomColor.blackprimary,
                              ),
                              Text(
                                "UI/UX Design",
                                style: TextStyle(
                                    color: CustomColor.blackprimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColor.textfieldbg1.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_alarm_sharp,
                                color: CustomColor.blackprimary,
                              ),
                              Text(
                                "UI Design",
                                style: TextStyle(
                                    color: CustomColor.blackprimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColor.textfieldbg1.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_alarm_sharp,
                                color: CustomColor.blackprimary,
                              ),
                              Text(
                                "UX Writing",
                                style: TextStyle(
                                    color: CustomColor.blackprimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
