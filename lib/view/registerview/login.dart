import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              decoration:const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                ),
              ),
              child: Image.asset("assets/logo.png"),
            )
          ],
        ),
      ),
    );
  }
}
