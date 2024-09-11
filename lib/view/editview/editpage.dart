import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:qhire_event/constants/custom_color.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  final List<String> labels = [
    "Full name",
    "Email",
    "Phone no",
    "Age",
    "Gender",
    "Qualification",
    "Skills",
    "Experience"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
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
          ),
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: CustomColor.textfieldbg.withOpacity(.5),
                      width: 2,
                    ),
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: CustomColor.textfieldbg,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColor.textfieldbg,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: CustomColor.scaffoldbg,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: CustomColor.textfieldbg,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: CustomColor.scaffoldbg,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return TextField(
                  decoration: InputDecoration(
                    label: Text(
                      labels[index],
                      style: const TextStyle(
                        color: CustomColor.uploadbg,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: CustomColor.textfieldbg1,
                        width: 0.5,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: SizedBox(
                height: 200,
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(5),
                    color: CustomColor.textfieldbg,
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Drag and Drop Files",
                              style: TextStyle(
                                  color: CustomColor.blackprimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.cloud_upload_outlined,
                              color: CustomColor.textfieldbg,
                              size: 50,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 350,
                              height: 60,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  backgroundColor: CustomColor.textfieldbg,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Browse Files",
                                  style: TextStyle(
                                    color: CustomColor.scaffoldbg,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: CustomColor.textfieldbg,
                ),
                onPressed: () {},
                child: const Text(
                  "Update",
                  style: TextStyle(
                    color: CustomColor.scaffoldbg,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
