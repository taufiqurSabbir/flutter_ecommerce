import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../widgets/auth_header.dart';
import 'complete_profile.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  int CountTime = 120;
  late Timer timer;

  void timerr(){
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if(CountTime >0){
          CountTime--;
        }else{
          t.cancel();
        }
      });
    });
  }


  void resetTimer() {
    setState(() {
      CountTime = 120; // Reset countTime to its initial value
    });
    timer.cancel(); // Cancel the existing timer
    timerr(); // Start a new timer
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerr();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                auth_page_header(
                    title: 'Enter OTP Code',
                    subtitle: 'A 4 Digit OTP code has been sent', topSize: 100,),
                Form(
                  child: PinCodeTextField(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      inactiveColor: AppColors.primarycolor,
                      activeColor: AppColors.primarycolor,
                      selectedFillColor: Colors.white,
                      selectedColor: AppColors.primarycolor,
                    ),
                    animationDuration: Duration(milliseconds: 300),
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(CompleteProfile());
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
                        text: '$CountTime s',
                        style: TextStyle(
                            color: AppColors.primarycolor,
                            fontWeight: FontWeight.bold))
                  ]),
                ),

                CountTime==0 ?TextButton(onPressed: (){
                  resetTimer();
                }, child: Text('Resend code',style: TextStyle(color: Colors.grey),)) : SizedBox(height: 1,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
