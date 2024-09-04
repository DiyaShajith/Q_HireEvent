import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
            ),
            Container(
              width: size.width,
              height: size.height * 0.32,
              decoration: const BoxDecoration(
                color: CustomColor.scaffoldbg,
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Center(
                child: Container(
                    width: 150, // Increased width
                    height: 150, // Increased height
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColor.textfieldbg,
                    ),
                    child: Image.asset(
                      "assets/rohit.png",
                    )),
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
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
