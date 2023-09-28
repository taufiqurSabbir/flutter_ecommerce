import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/dashboard.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/auth/complete_profile.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/buttom_nav.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import '../../../../controller/authController.dart';
import '../../widgets/auth_header.dart';
import 'otp_verification_Page.dart';

class Email_Varification extends StatefulWidget {
  const Email_Varification({super.key});

  @override
  State<Email_Varification> createState() => _Email_VarificationState();
}

class _Email_VarificationState extends State<Email_Varification> {

  late bool _passwordVisible;
  final phone = TextEditingController();
  final password = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                auth_page_header(title:'Welcome Back',subtitle:'Please Enter your Phone Number', topSize: 100,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                  child: TextFormField(
                    controller: phone,
                    decoration:  InputDecoration(
                      hintText: '01XXXX-XXXXX',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primarycolor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primarycolor)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primarycolor)),
                    ),
                    validator: (v){
                      if(v!.isEmpty){
                        return "Phone filed must not be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                  child: TextFormField(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: ()=>phone.text.isEmpty && password.text.isEmpty ? null : login(),
                          child: isLoading ? Center(child: CircularProgressIndicator(strokeWidth: 1, color: Colors.white,),) : Text('Login'))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                          onPressed: () {
                            Get.to(AdminDashboard());
                          },
                          child: const Text('Gust Login'))),
                ),

                SizedBox(height: 20,),
                TextButton(
                    onPressed: ()=>Get.to(CompleteProfile()),
                    child: Text(" Create New Accout")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login()async {
    setState(() =>isLoading = true);
    var res =await AuthController.login(phone: phone.text, password: password.text);

    if(res.statusCode == 200){
      Get.offAll(ButtomNav());
    }else{
      Get.snackbar("Invalid Credential.", "Invalid login credential. Please check and try again.");
    }
    setState(() =>isLoading = false);
  }

}


