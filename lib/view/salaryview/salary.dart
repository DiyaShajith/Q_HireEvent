import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Salary extends StatefulWidget {
  const Salary({super.key});

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  List<bool> selectedValues =
      List.filled(5, false); // Keep track of each checkbox
  List title = [
    "All Range ",
    "10K - 15K",
    "20K - 25K",
    "40K - 50K ",
    "More than 50K",
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
