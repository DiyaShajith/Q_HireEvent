import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Certificatepage extends StatefulWidget {
  const Certificatepage({super.key});

  @override
  State<Certificatepage> createState() => _CertificatepageState();
}

class _CertificatepageState extends State<Certificatepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldbg,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: CustomColor.blackprimary,
            size: 32,
          ),
        ),
        title: const Text(
          "Certification",
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
            Container(
              padding: const EdgeInsets.all(6),
              width: size.width,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: CustomColor.textfieldbg1, width: 0.5)),
              child: Row(
                children: [
                  Image.asset("assets/certificate1.png"),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Fundamentals of UI UX",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 19.5,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Figma Google",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 19.5,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Certificate",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 19.5,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(6),
              width: size.width,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: CustomColor.textfieldbg1, width: 0.5)),
              child: Row(
                children: [
                  Image.asset("assets/certificate2.png"),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Google UX Designer",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(5),
                  color: CustomColor.textfieldbg,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      child: Icon(
                        Icons.add_box_outlined,
                        color: CustomColor.textfieldbg,
                        size: 30,
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
