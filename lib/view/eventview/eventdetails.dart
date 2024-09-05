import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Eventdetails extends StatefulWidget {
  const Eventdetails({super.key});

  @override
  State<Eventdetails> createState() => _EventdetailsState();
}

class _EventdetailsState extends State<Eventdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CustomColor.scaffoldbg,
        title: const Text(
          "Event",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tech Conference 2024\nAug 15, 2024",
                    style: TextStyle(
                        color: CustomColor.blackprimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.bookmark_border_outlined,
                    color: CustomColor.textfieldbg,
                    size: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/eventjob.png"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Join industry leaders in tech for a day of\ninsightful discussions, networking\nopportunities, and hands-on workshops.",
              style: TextStyle(
                  color: CustomColor.blackprimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Speakers: John Doe - CEO, TechCorp, Jane\nSmith - CTO, InnovateX",
              style: TextStyle(
                  color: CustomColor.blackprimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: CustomColor.textfieldbg,
                  size: 32,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "Tech Hall, Silicon Valley, Map and Directions",
                    style: TextStyle(
                        color: CustomColor.uploadbg,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.access_time_filled_outlined,
                  color: CustomColor.textfieldbg,
                  size: 32,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Time : 11 AM",
                  style: TextStyle(
                      color: CustomColor.uploadbg,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Spacer(),
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
                    "Register",
                    style: TextStyle(
                        color: CustomColor.scaffoldbg,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
