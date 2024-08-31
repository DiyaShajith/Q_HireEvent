import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
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
              child: Image.asset("assets/logo.png"),
            ),
            Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                    color: Colors.grey,
                  )),
                  color: CustomColor.scaffoldbg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login to your account",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.mail,
                            color: CustomColor.textfieldbg,
                          ),
                          label: const Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.visibility_off_outlined,
                            color: CustomColor.textfieldbg,
                          ),
                          label: const Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          side: BorderSide(color: Colors.grey, width: 1),
                          value: this.value,
                          onChanged: (bool? newValue) {
                            if (newValue != null) {
                              setState(() {
                                this.value = newValue;
                              });
                            }
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              color: Colors.grey[450],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 400,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: CustomColor.textfieldbg),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: CustomColor.scaffoldbg,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Or",
                      style: TextStyle(
                          color: CustomColor.blackprimary, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/apple.png"),
                        Image.asset("assets/google.png")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          " Register",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
