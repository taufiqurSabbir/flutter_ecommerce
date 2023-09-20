import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/auth_header.dart';
import 'otp_verification_Page.dart';

class Email_Varification extends StatefulWidget {
  const Email_Varification({super.key});

  @override
  State<Email_Varification> createState() => _Email_VarificationState();
}

class _Email_VarificationState extends State<Email_Varification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                auth_page_header(title:'Welcome Back',subtitle:'Please Enter your email address'),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Email Address',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {
                            Get.to(OtpVerification());
                          },
                          child: const Text('Next'))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


