import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Forgotpasswordview extends StatefulWidget {
  const Forgotpasswordview({super.key});

  @override
  State<Forgotpasswordview> createState() => _ForgotpasswordviewState();
}

class _ForgotpasswordviewState extends State<Forgotpasswordview> {
  final emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const Spacer(),
              const Center(
                child: Icon(
                  Icons.lock,
                  color: CustomColor.textfieldbg,
                  size: 60,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    color: CustomColor.blackprimary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You can reset your password here",
                style: TextStyle(
                    color: CustomColor.blackprimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter an email";
                  }
                  return null;
                },
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: CustomColor.textfieldbg1,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(
                    Icons.email,
                    color: CustomColor.textfieldbg,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _formkey.currentState!.validate();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(size.width * 0.85, 60),
                  backgroundColor: CustomColor.textfieldbg,
                ),
                child: const Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
