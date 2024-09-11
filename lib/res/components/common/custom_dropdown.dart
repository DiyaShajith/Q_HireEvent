import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final List<String> items;
  const CustomDropdown(
      {super.key, required this.label, required this.items});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: CustomColor.scaffoldbg,
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: label,
            style: const TextStyle(
              color: Color.fromARGB(255, 87, 86, 86),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            children: const [
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
      items: items.map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}
