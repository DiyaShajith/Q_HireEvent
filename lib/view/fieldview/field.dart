import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  List<bool> selectedValues = List.filled(9, false);
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
            activeColor: CustomColor.textfieldbg,
            value: selectedValues[index],
            onChanged: (bool? value) {
              setState(() {
                for (int i = 0; i < selectedValues.length; i++) {
                  selectedValues[i] = false; // Uncheck all other checkboxes
                }
                selectedValues[index] = value!; // Check the selected checkbox
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
