import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Form(
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.transparent,
                      inactiveFillColor: Colors.white,
                      inactiveColor: AppColors.primarycolor.withOpacity(0.5),
                      activeColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: AppColors.primarycolor,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    cursorColor:AppColors.primarycolor,
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter OTP here';
                      }
                    },
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {});
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                    appContext: context,
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
