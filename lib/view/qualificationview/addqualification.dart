import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Addqualification extends StatefulWidget {
  const Addqualification({super.key});

  @override
  State<Addqualification> createState() => _AddqualificationState();
}

class _AddqualificationState extends State<Addqualification> {
  final List<String> labels = [
    "Education",
    "University/College",
    "Enrolled Year",
    "Pass out Year"
  ];

  @override
  Widget build(BuildContext context) {
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
          "Add Qualification",
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
            Expanded(
              child: ListView.separated(
                itemCount: labels.length,
                itemBuilder: (context, index) {
                  return TextField(
                    decoration: InputDecoration(
                      label: Text(
                        labels[index],
                        style: const TextStyle(
                          color: CustomColor.uploadbg,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: CustomColor.textfieldbg1,
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              ),
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
      ),
    );
  }
}
