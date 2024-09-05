import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  bool value = false;
  List title = [
    "Software Developer",
    "Data Scientist",
    "CyberSecurity Analyst",
    "UI/UX Designer",
    "DevOps Engineer",
    "Cloud Architect",
    "System Analyst",
    "Product Manager",
    "Mobile App Developer",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: title.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value!;
              });
            },
          ),
          Text(
            title[index],
            style: const TextStyle(
                color: CustomColor.blackprimary,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
