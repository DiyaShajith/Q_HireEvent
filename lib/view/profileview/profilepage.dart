import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Correct usage of MediaQuery
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // Change background image
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: size.width,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  border: Border.all(
                    color: theme.colorScheme.onSurface.withOpacity(.3),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Text("Rohit",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "UI/UX Designer",
                        style: TextStyle(
                            color: CustomColor.uploadbg,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "rohit007@gmail.com",
                        style: TextStyle(
                            color: CustomColor.uploadbg,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/uil_edit.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/emojione_graduation-cap.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Qualification",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                                "assets/fluent_certificate-20-regular.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Certifications",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/mdi_head-cog-outline.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Skills",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/pepicons-pencil_cv.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Resume",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                                "assets/fluent_document-table-search-20-filled.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "View Applied Jobs",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg1.withOpacity(0.8),
                              width: 0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/material-symbols_settings.png"),
                            const SizedBox(width: 50), // Adjusted to width
                            Text(
                              "Settings",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: CustomColor.blackprimary,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 110,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: CustomColor.textfieldbg,
                    width: 8,
                  ),
                  image: const DecorationImage(
                    // Change Rohit image
                    image: AssetImage(
                      "assets/rohit.png",
                    ),
                    fit: BoxFit.fitHeight,
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
