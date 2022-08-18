import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_market/view/home/widgets/button_widget.dart';
import 'package:kiddy_market/view/login/widgets/textformfield_widget.dart';
import 'package:kiddy_market/view/signup/otp_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundcolorBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 55.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Kiddie',
                        style: TextStyle(
                          fontSize: 33.sp,
                           fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: kWhitecolor,
                          ),
                        ), 
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Sign Up',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20.sp,
                            color: kWhitecolor,
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                     TextFormFieldWidget(
                      title: 'Username',
                      controller: _usernameController,
                      validator: (value) {
                        if(value.length < 4) {
                          return 'Please enter atleast 4 characters';
                       }
                       if(value.toString().isEmpty) {
                        return 'Please enter the Username';
                       }
                       return null;
                      },
                      icon: Icons.person,
                      ),
                      
                      SizedBox(height: 10.h),
                       TextFormFieldWidget(
                      title: 'Email',
                      controller: _emailController,
                      validator: (value) {
                        if(GetUtils.isEmail(value)){
                          return 'Please enter a valid mail';
                        }
                        if(value.toString().isEmpty) {
                          return 'Please enter your mail';
                        }
                        return null;
                      },
                      icon: Icons.email,
                      ),
                        const SizedBox(height: 10),
                        TextFormFieldWidget(
                      title: 'Phone Number',
                      controller: _phoneController,
                      validator: (value) {
                        if(GetUtils.isPhoneNumber(value)){
                          return 'Please enter a valid phone number';
                        }
                        if(value.toString().isEmpty) {
                          return 'Please enter phone number';
                        }
                        return null;
                      },
                      icon: Icons.phone,
                      ),
                         SizedBox(height: 10.h),
                         TextFormFieldWidget(
                      title: 'Password',
                      controller: _passwordController,
                      validator: (value) {
                        if(value.toString().length < 4) {
                          return 'Please enter atleast 4 characters';
                        }
                        if(value.toString().isEmpty) {
                          return 'Please enter the password';
                        }
                        return null;
                      },
                      icon: Icons.lock,
                      ),
                      SizedBox(height: 10.h),
                      TextFormFieldWidget(
                      title: 'Confirm Password',
                      controller: _confirmPasswordcontroller,
                      validator: (value) {
                         if(value.toString().length < 4) {
                          return 'Please enter atleast 4 characters';
                        }
                        if(value.toString().isEmpty) {
                          return 'Please enter the password';
                        }
                        return null;
                      },
                      icon: Icons.lock,
                      ),  
                            SizedBox(height: 60.h),
                            ButtonWidget(
                            title: 'Sign up', 
                            ontap: () {
                             // Get.to(OtpScreen());
                              // Navigator.push(context, MaterialPageRoute(builder: ((context) => ScreenMainPage())
                              // ),
                              // );
                            }),
                           ]
              ),
            ),
          ),
        ),
      ),

    );
    
  }
}