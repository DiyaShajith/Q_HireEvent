import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

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
      backgroundColor: CustomColor.scaffoldbg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Event",
              style: TextStyle(
                  color: CustomColor.blackprimary,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
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
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      border: Border.all(color: CustomColor.textfieldbg),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: Text(
                        "Cancelled",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
