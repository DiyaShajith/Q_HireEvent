import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
          "Resume",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/resume.png"),
            Padding(
              padding: const EdgeInsets.all(16),
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(5),
                  color: CustomColor.textfieldbg,
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Upload Different File",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () async {
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles();

                              if (result != null) {
                                File file = File(result.files.single.path!);
                              } else {
                                // User canceled the picker
                              }
                            },
                            child: const Icon(
                              Icons.file_upload,
                              color: CustomColor.textfieldbg,
                              size: 30,
                            ),
                          )
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
