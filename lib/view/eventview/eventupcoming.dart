import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventdetails.dart';

class Eventupcoming extends StatefulWidget {
  const Eventupcoming({super.key});

  @override
  State<Eventupcoming> createState() => _EventupcomingState();
}

class _EventupcomingState extends State<Eventupcoming> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(3),
            width: size.width,
            height: size.height * 0.2,
            decoration: BoxDecoration(
                color: CustomColor.scaffoldbg,
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: CustomColor.textfieldbg1, width: 0.5)),
            child: Row(
              children: [
                Image.asset("assets/event1.png"),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tech Conference",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5), // Increased spacing
                    const Text(
                      "Join industry leaders in tech for a day\nof insightful discussions and\nnetworking.",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5), // Increased spacing
                    const Text(
                      "Aug 15 2024",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Eventdetails()));
            },
            child: Container(
              padding: const EdgeInsets.all(3),
              width: size.width,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: CustomColor.textfieldbg1, width: 0.5)),
              child: Row(
                children: [
                  Image.asset("assets/event2.png"),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tech Conference",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5), // Increased spacing
                      const Text(
                        "Join industry leaders in tech for a day\nof insightful discussions and\nnetworking.",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5), // Increased spacing
                      const Text(
                        "Aug 15 2024",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(3),
            width: size.width,
            height: size.height * 0.2,
            decoration: BoxDecoration(
                color: CustomColor.scaffoldbg,
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: CustomColor.textfieldbg1, width: 0.5)),
            child: Row(
              children: [
                Image.asset("assets/event3.png"),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tech Conference",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5), // Increased spacing
                    const Text(
                      "Join industry leaders in tech for a day\nof insightful discussions and\nnetworking.",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5), // Increased spacing
                    const Text(
                      "Aug 15 2024",
                      style: TextStyle(
                          color: CustomColor.blackprimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
