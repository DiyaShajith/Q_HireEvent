import 'package:flutter/material.dart';
import 'package:qhire_event/constants/bottomnavigationpage.dart';
import 'package:qhire_event/constants/custom_color.dart';

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
  String expertisecalue = "Selected";
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
                      TextField(
                        decoration: InputDecoration(
                            label: RichText(
                              text: const TextSpan(
                                text: "Full name",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: RichText(
                              text: const TextSpan(
                                text: "Mobile Number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: RichText(
                              text: const TextSpan(
                                text: "Email",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Replaced Gender TextField with DropdownButtonFormField
                      DropdownButtonFormField(
                        dropdownColor: CustomColor.scaffoldbg,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 87, 86, 86),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        value: gendervalue,
                        decoration: InputDecoration(
                          label: RichText(
                            text: const TextSpan(
                              text: "Gender",
                              style: TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontSize: 16,
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                          color: CustomColor.blackprimary,
                        ),
                        items: genderItems.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            gendervalue = newValue!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownButtonFormField(
                        dropdownColor: CustomColor.scaffoldbg,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 87, 86, 86),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        value: dropdownvalue,
                        decoration: InputDecoration(
                          label: RichText(
                            text: const TextSpan(
                              text: "Qualification",
                              style: TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontSize: 16,
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                          color: CustomColor.blackprimary,
                        ),
                        items: items.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 35,
                              color: CustomColor.blackprimary,
                            ),
                            label: RichText(
                              text: const TextSpan(
                                text: "Experience",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: RichText(
                              text: const TextSpan(
                                text: "Linkedin Profile",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 35,
                              color: CustomColor.blackprimary,
                            ),
                            label: RichText(
                              text: const TextSpan(
                                text: "District",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownButtonFormField<String>(
                        dropdownColor: CustomColor.scaffoldbg,
                        decoration: InputDecoration(
                          label: RichText(
                            text: const TextSpan(
                              text: "Area of Expertise",
                              style: TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontSize: 16,
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        items: expertiseItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle the change here
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                          color: CustomColor.blackprimary,
                        ),
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
                                onPressed: () {},
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
                                onPressed: () {},
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
