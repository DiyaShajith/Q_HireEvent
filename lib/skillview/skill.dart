import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
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
          "Skill",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.add_box_outlined,
                  color: CustomColor.textfieldbg,
                  size: 30,
                ),
                hintText: "Add Your Skills",
                hintStyle: TextStyle(
                    color: CustomColor.uploadbg,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: CustomColor.textfieldbg1, width: 0.5))),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColor.textfieldbg1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.clear_outlined,
                          color: CustomColor.scaffoldbg,
                        ),
                        Text(
                          "UI/UX Design",
                          style: TextStyle(
                              color: CustomColor.scaffoldbg,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColor.textfieldbg1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.clear_outlined,
                          color: CustomColor.scaffoldbg,
                        ),
                        Text(
                          "UI Design",
                          style: TextStyle(
                              color: CustomColor.scaffoldbg,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColor.textfieldbg1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.clear_outlined,
                          color: CustomColor.scaffoldbg,
                        ),
                        Text(
                          "UX Writing",
                          style: TextStyle(
                              color: CustomColor.scaffoldbg,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 500,
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
    );
  }
}
