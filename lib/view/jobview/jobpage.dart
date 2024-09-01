import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Jobpage extends StatefulWidget {
  const Jobpage({super.key});

  @override
  State<Jobpage> createState() => _JobpageState();
}

class _JobpageState extends State<Jobpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: CustomColor.blackprimary,
                    )),
                Text(
                  "Saved Jobs",
                  style: TextStyle(
                      color: CustomColor.blackprimary,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Job title,Keyword, or Company",
                  hintStyle: TextStyle(
                      color: CustomColor.uploadbg,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  fillColor: CustomColor.scaffoldbg,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: CustomColor.textfieldbg,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
