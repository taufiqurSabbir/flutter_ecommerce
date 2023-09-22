import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/auth_header.dart';
import 'package:get/get.dart';
import '../categories.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.primarycolor,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                auth_page_header(title: 'Complete Profile', subtitle: 'Get Started with us with your details', topSize: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'First name'
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Last name'
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Mobile'
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'City'
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                            hintText: 'Shipping Address'
                        ),
                      ),
                      SizedBox(height: 10,),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.to(Categories());
                          },
                          child: Text('Complete'),
                        ),
                      )

                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
