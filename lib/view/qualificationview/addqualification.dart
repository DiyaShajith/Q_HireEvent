import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Addqualification extends StatefulWidget {
  const Addqualification({super.key});

  @override
  State<Addqualification> createState() => _AddqualificationState();
}

class _AddqualificationState extends State<Addqualification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldbg,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: CustomColor.blackprimary,
              size: 32,
            )),
        title: const Text(
          "Add Qualification",
          style: TextStyle(
              color: CustomColor.blackprimary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: CustomColor.scaffoldbg,
    );
  }
}
