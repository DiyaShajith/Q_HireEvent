import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';

class Eventupcoming extends StatefulWidget {
  const Eventupcoming({super.key});

  @override
  State<Eventupcoming> createState() => _EventupcomingState();
}

class _EventupcomingState extends State<Eventupcoming> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Event",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: CustomColor.scaffoldbg,
      ),
      backgroundColor: CustomColor.scaffoldbg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: CustomColor.textfieldbg),
                    child: const Center(
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                            color: CustomColor.scaffoldbg,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Eventcancelled()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: CustomColor.textfieldbg, width: 1.5),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Center(
                        child: Text(
                          "Cancelled",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
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
                    border: Border.all(
                        color: CustomColor.textfieldbg1, width: 0.5)),
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
              child: Container(
                padding: const EdgeInsets.all(3),
                width: size.width,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    color: CustomColor.scaffoldbg,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: CustomColor.textfieldbg1, width: 0.5)),
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(3),
                width: size.width,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    color: CustomColor.scaffoldbg,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: CustomColor.textfieldbg1, width: 0.5)),
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
        ),
      ),
    );
  }
}
