import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiddy_market/controller/login_controller.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:kiddy_market/view/login/widgets/textformfield_widget.dart';
import 'package:kiddy_market/view/main_page/screen_main_page.dart';
import 'package:kiddy_market/view/signup/signup_screen.dart';
import '../home/widgets/button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
 // final signInController = Get.put(LoginController());
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundcolorBlue,
        body: 
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 55.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kiddie',
                              style: TextStyle(
                                fontSize: 33.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                color: kWhitecolor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Sign In',
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
                              title: 'Email',
                              icon: Icons.email,
                              controller: _emailController,
                              validator: (value) {
                                if (!GetUtils.isEmail(value)) {
                                  return 'Please Enter a valid mail';
                                }
                                if (value.toString().isEmpty) {
                                  return 'Please Enter your mail';
                                }
                                return null;
                              },
                            ),
                          
                        
                        SizedBox(height: 10.h),
                        TextFormFieldWidget(
                          title: 'Password',
                          icon: Icons.lock,
                          controller: _passwordController,
                          validator: (value) {
                            if (value.toString().length < 4) {
                              return 'Please enter atleast 4 characters';
                            }
                            if (value.toString().isEmpty) {
                              return 'Please enter the password';
                            }
                          return null;
                          },
                        ),
                        SizedBox(height: 60.h),
                        ButtonWidget(
                          title: 'Sign In',
                          ontap: () {
                            // if (_emailController.text.isEmpty ||
                            //     _passwordController.text.isEmpty) {
                            //       //snack bar
                            //   return;
                            // } else {
                            //   signInController.signInuser(
                            //       _emailController.text, _passwordController.text);
                            // }
                            // Get.to(ScreenMainPage());
                            // signIn();
            //                 if(_emailController.text.isNotEmpty&&_passwordController.text.isNotEmpty){
            //   await FirebaseAuth.instance.signInWithEmailAndPassword(
            // email: _emailController.text.trim(),
            // password: _passwordController.text.trim(),);
            signIn();
            print(_emailController.text);
            print(_passwordController.text);

                      log('message');

                          //  }
              
                          },
                        ),
                        SizedBox(height: 13.h),
                        RichText(
                          text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: TextStyle(
                                color: const Color(0xff0E3746),
                                fontSize: 13.sp,
                              ),
                               children: [
                                TextSpan(
                                  text: ' Sign Up',
                                  style: TextStyle(
                                    color: kWhitecolor,
                                    fontSize: 14.sp,
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    Get.to(SignupScreen());
                                  }
                                ),
                              ]
                          ),   
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ));       
  }
  Future signIn() async{
         await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
        }
}
