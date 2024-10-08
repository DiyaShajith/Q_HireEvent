import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/qualificationview/addqualification.dart';

class Qualification extends StatefulWidget {
  const Qualification({super.key});

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
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
          "Qualification",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: CustomColor.scaffoldbg,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColor.textfieldbg1,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Diploma in Multi Media",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        color: CustomColor.textfieldbg,
                        size: 28,
                      ),
                    ],
                  ),
                  Text(
                    "Vis College Calicut",
                    style: TextStyle(
                        fontSize: 18,
                        color: CustomColor.blackprimary,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "2022-2023",
                    style: TextStyle(
                        fontSize: 18,
                        color: CustomColor.blackprimary,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColor.textfieldbg1,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Bachelors of Design",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_rounded,
                        color: CustomColor.textfieldbg,
                        size: 28,
                      ),
                    ],
                  ),
                  Text(
                    "Design University of Calicut",
                    style: TextStyle(
                        fontSize: 18,
                        color: CustomColor.blackprimary,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "2019-2021",
                    style: TextStyle(
                        fontSize: 18,
                        color: CustomColor.blackprimary,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(5),
                color: CustomColor.textfieldbg,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Addqualification()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: double.infinity,
                    child: const Icon(
                      Icons.add_box_outlined,
                      color: CustomColor.textfieldbg,
                      size: 30,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
