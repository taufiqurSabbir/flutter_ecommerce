import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/authController.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final name = TextEditingController();
  final phone = TextEditingController();
  final shippingAddress = TextEditingController();
  final city = TextEditingController();
  final password = TextEditingController();
  final newPassword = TextEditingController();
  final confirmNewPassword = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black87,), onPressed: ()=>Get.back(),),
            title: Text("My Profile",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87
              ),
            ),
            elevation: 1,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: ()=>logout(),
                icon: Icon(Icons.logout, color: Colors.black87,),
              )
            ],
          ),

          body:SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: 'name'
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                      hintText: 'phone'
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: city,
                  decoration: InputDecoration(
                      hintText: 'City'
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  maxLines: 4,
                  controller: shippingAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                      hintText: 'Shipping address'
                  ),
                ),
                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: isLoading ? Center(child: CircularProgressIndicator(strokeWidth: 1, color: Colors.white,),) : Text('Update Information'))),
                ),
                SizedBox(height: 20,),

                Text("Change Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: false,
                  controller: password,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Old Password'
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: newPassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'New Password'
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: newPassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Re-type New Password'
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: isLoading ? const Center(child: CircularProgressIndicator(strokeWidth: 1, color: Colors.white,),) : Text('Update Password'))),
                ),


              ],
            ),
          ),

        ),
      ),
    );
  }

  logout() {
    Get.defaultDialog(
      title: "Are you sure?",
      content: Text("Do you want to logout?"),
      confirm: TextButton(
        onPressed: ()=>AuthController.logout(),
        child: Text("Logout"),
      ),
        cancel: TextButton(
          onPressed: ()=>AuthController.logout(),
          child: Text("Cancel"),
        )
    );
  }
}
