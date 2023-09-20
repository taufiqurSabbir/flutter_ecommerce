import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import '../../widgets/auth_header.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              auth_page_header(
                  title: 'Enter OTP Code',
                  subtitle: 'A 4 Digit OTP code has been sent'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
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
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'this code will expare in ',
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: '120s',
                      style: TextStyle(
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              TextButton(onPressed: (){}, child: Text('Resend code',style: TextStyle(color: Colors.grey),))
            ],
          ),
        ),
      ),
    );
  }
}
