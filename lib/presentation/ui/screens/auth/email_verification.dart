import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/image_asset.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                  child: SvgPicture.asset(
                ImmageAsset.logosvg,
                width: 140,
              )),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 24, color: const Color(0xff4E4E4E)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Please Enter your email address',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey)),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(

                      onPressed: () {},
                      child: const Text('Next')))
            ],
          ),
        ),
      ),
    );
  }
}
