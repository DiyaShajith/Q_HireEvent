import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Typepage extends StatefulWidget {
  const Typepage({super.key});

  @override
  State<Typepage> createState() => _TypepageState();
}

class _TypepageState extends State<Typepage> {
  List<bool> selectedValues =
      List.filled(4, false); // Track state for each checkbox
  List<String> title = [
    "Full-Time",
    "Part-Time",
    "Internship",
    "Freelance",
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
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
