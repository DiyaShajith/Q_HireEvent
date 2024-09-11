import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:qhire_event/constants/bottomnavigationpage.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/res/components/common/custom_dropdown.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class Registerfield extends StatefulWidget {
  const Registerfield({super.key});

  @override
  State<Registerfield> createState() => _RegisterfieldState();
}

class _RegisterfieldState extends State<Registerfield> {
  String dropdownvalue = "Selected";
  var items = [
    "Selected",
    "Bachelor's Degree",
    "Masters Degree",
    "Diploma",
    "+2"
  ];
  String gendervalue = "Selected";
  var genderItems = ["Selected", "Female", "Male", "Others"];
  String expertisevalue = "Selected";
  var expertiseItems = [
    "UI/UX",
    "Python",
    "Machine Learning",
    "Digital Marketing",
    "Product Management",
    "Frotend",
    "Backend",
    "Full Stack",
    "Mobile App Development",
    "iOS",
    "Web Development",
    "React",
    "Java"
  ];
  String experiencevalue = "Selected";
  var experienceitems = [
    "0-1 years",
    "2+ years",
    "5+ years",
    "No prior work related experience"
  ];
  String districtvalue = "Selected";
  var districtitems = [
    "Thiruvananthapuram",
    "Kollam",
    "Pathanamthitta",
    "Alappuzha",
    "Kottayam",
    "Idukki",
    "Ernakulam",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "Kozhikode",
    "Wayanad",
    "Kannur",
    "Kasaragod"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
            ),
            Container(
              width: size.width,
              height: size.height * 0.32,
              decoration: const BoxDecoration(
                color: CustomColor.scaffoldbg,
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Image.asset("assets/logo.png"),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Create your account",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomTextformfield(
                        isRequired: true,
                        label: "Full name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextformfield(
                        isRequired: true,
                        label: "Mobile Number",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextformfield(
                        isRequired: true,
                        label: "Email",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Replaced Gender TextField with DropdownButtonFormField
                      CustomDropdown(
                        label: "Gender",
                        items: genderItems,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomDropdown(
                        label: "Qualification",
                        items: items,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomDropdown(
                        label: "Experience",
                        items: experienceitems,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextformfield(
                        isRequired: true,
                        label: "Linkedin Profile",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomDropdown(
                        label: "District",
                        items: districtitems,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomDropdown(
                        label: "Area of Expertise",
                        items: expertiseItems,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: "Upload Photograph",
                              style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            " (Max file :3Mb)",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: size.width,
                        // height: size.height * 0.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor: CustomColor.uploadbg),
                                onPressed: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();

                                  if (result != null) {
                                    File file = File(result.files.single.path!);
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                child: const Text(
                                  "Choose file",
                                  style: TextStyle(
                                      color: CustomColor.scaffoldbg,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                            const Text(
                              "   No file chosen",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: "Upload Resume",
                              style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            " (Max file :3Mb)",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: size.width,
                        // height: size.height * 0.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor: CustomColor.uploadbg),
                                onPressed: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();

                                  if (result != null) {
                                    File file = File(result.files.single.path!);
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                child: const Text(
                                  "Choose file",
                                  style: TextStyle(
                                      color: CustomColor.scaffoldbg,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                            const Text(
                              "   No file chosen",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Bottomnavigationpage()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: Size(size.width * 0.85, 60),
                          backgroundColor: CustomColor.textfieldbg,
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: CustomColor.textfieldbg,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
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
