import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Registerfield extends StatefulWidget {
  const Registerfield({super.key});

  @override
  State<Registerfield> createState() => _RegisterfieldState();
}

class _RegisterfieldState extends State<Registerfield> {
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
                            label: const Text(
                              "Full name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              "Mobile Number",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              "Email",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              "Gender",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
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
                            label: const Text(
                              "Qualification",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
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
                            label: const Text(
                              "Experience",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              "Linkedin Profile",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
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
                            label: const Text(
                              "District",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
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
                            label: const Text(
                              "Area of Expertise",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Upload Resume",
                            style: TextStyle(
                                color: Color.fromARGB(255, 70, 69, 69),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
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
                        height: 50,
                      ),
                      SizedBox(
                        width: size.width,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
