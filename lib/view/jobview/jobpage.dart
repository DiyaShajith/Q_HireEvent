import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Jobpage extends StatefulWidget {
  const Jobpage({super.key});

  @override
  State<Jobpage> createState() => _JobpageState();
}

class _JobpageState extends State<Jobpage> {
  final List<String> image = [
    "assets/microsoft.png",
    "assets/twitter.png",
    "assets/facebook.png"
  ];
  final List<String> title = ["Microsoft", "Twitter", "Facebook"];
  final List<String> subtitle = [
    "Product Designer",
    "Product Designer",
    "Product Designer"
  ];
  final List<String> leadingicon = ["assets/save.png"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldbg,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: CustomColor.blackprimary,
              size: 32,
            )),
        title: const Text(
          "Saved Jobs",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: CustomColor.scaffoldbg,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 40,
                      spreadRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: const Icon(
                      Icons.mic_outlined,
                      color: CustomColor.textfieldbg,
                      size: 28,
                    ),
                    hintText: "Job title, Keyword, or Company",
                    hintStyle: const TextStyle(
                      color: CustomColor.uploadbg,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: CustomColor.scaffoldbg,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: CustomColor.textfieldbg,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(16),
                width: size.width,
                height: size.height * 0.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: CustomColor.textfieldbg1,
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      image[index],
                      width: 56,
                      height: 56,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[index],
                          style: const TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          subtitle[index],
                          style: const TextStyle(
                            color: CustomColor.uploadbg,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      leadingicon[0],
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              shrinkWrap: true,
              itemCount: image.length,
            ),
          ],
        ),
      ),
    );
  }
}
