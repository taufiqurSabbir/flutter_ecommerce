import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/authController.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/HomeScreen.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/auth_header.dart';
import 'package:get/get.dart';
import '../buttom_nav.dart';
import '../categories.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final city = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final shipoingAddress = TextEditingController();

  bool isLoading = false;
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  final signupForm = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.primarycolor,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: signupForm,
              child: Column(
                children: [
                  auth_page_header(title: 'Complete Profile', subtitle: 'Get Started with us with your details', topSize: 50,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            hintText: 'Full Name'
                          ),
                        ),
                        SizedBox(height: 12,),

                        TextFormField(
                          controller: phone,
                          decoration: InputDecoration(
                              hintText: '01XXX-XXXXXX'
                          ),
                          validator: (v){
                            if(v!.isEmpty){
                              return "Phone Number filed must not be empty";
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 12,),
                        TextFormField(
                          controller: password,
                          decoration:  InputDecoration(
                            hintText: 'PASSWORD',
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          validator: (v){
                            if(v!.isEmpty){
                              return "Password filed must not be empty";
                            }
                            return null;
                          },

                        ),
                        SizedBox(height: 12,),
                        TextFormField(
                          controller: confirmPassword,
                          decoration:  InputDecoration(
                            hintText: 'CONFIRM PASSWORD',
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primarycolor)),
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          validator: (v){
                            if(v!.isEmpty){
                              return "Confirm Password filed must not be empty";
                            }
                            return null;
                          },

                        ),
                        SizedBox(height: 12,),
                        TextFormField(
                          controller: city,
                          decoration: InputDecoration(
                              hintText: 'City'
                          ),
                        ),
                        SizedBox(height: 12,),
                        TextFormField(
                          controller: shipoingAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                              hintText: 'Shipping Address'
                          ),
                          validator: (v){
                            if(v!.isEmpty){
                              return "Shipping Address must not be empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              if(signupForm.currentState!.validate()){
                                signUpMethod();
                              }

                            },
                            child: isLoading? Center(child: CircularProgressIndicator(strokeWidth: 1, color: Colors.white,),) : Text('Complete'),
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
      ),
    );
  }

  void signUpMethod() async{
    setState(() =>isLoading = true);
    var res = await AuthController.signUp(
        phone: phone.text,
        password: password.text,
        confirmPassword: confirmPassword.text,
        name: name.text,
        shoppingAddress: shipoingAddress.text,
        city: city.text,
    );
    print(res.statusCode);
    print(res.body);
    print(res.header);
    setState(() =>isLoading = false);
  }
}
