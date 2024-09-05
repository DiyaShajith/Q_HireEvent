import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Typepage extends StatefulWidget {
  const Typepage({super.key});

  @override
  State<Typepage> createState() => _TypepageState();
}

class _TypepageState extends State<Typepage> {
   bool value = false;
  List title = [
    "Full-Time",
    "Part-Time",
    "Internship",
    "Freelance",
    
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
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