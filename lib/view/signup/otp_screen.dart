import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:kiddy_market/view/home/widgets/button_widget.dart';
import 'package:kiddy_market/view/main_page/screen_main_page.dart';
import 'package:otp_text_field/otp_field.dart';

class OtpScreen extends StatelessWidget {
   OtpScreen({Key? key}) : super(key: key);
  OtpFieldController _otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundcolorBlue,
      body: SafeArea(
          // child: OTPTextField(
          // controller: _otpController,
          // length: 5,
          // width: MediaQuery.of(context).size.width,
          // textFieldAlignment: MainAxisAlignment.spaceAround,
          // fieldWidth: 45,
          // fieldStyle: FieldStyle.box,
          // outlineBorderRadius: 8,
          // style: TextStyle(fontSize: 17),
          // onCompleted: (value) {
          //   print('completed${value}');
          // },
          // ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                const Text('OTP Sent to your number',
                style: TextStyle(
                  color: kWhitecolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: const [
                    OtpFieldWidget(),
                    OtpFieldWidget(),
                    OtpFieldWidget(),
                    OtpFieldWidget(),
                 ],
                ),
                const SizedBox(height: 20),
                TextButton(onPressed: () {
                },
                child: const Text('Resend OTP',
                style: TextStyle(
                  fontSize: 16,
                color: kWhitecolor,
                ),
                ),
                ),
                const SizedBox(height: 30),
                ButtonWidget(title: 'Proceed',
                ontap: () {
                  Get.to(ScreenMainPage());
                },
              ),
              ],
            ),
          ),
        ),
      ),
    );    
  }
}

class OtpFieldWidget extends StatelessWidget {
  const OtpFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 60,
      child: TextFormField(
        onSaved: (pin) {},
        onChanged: (value) {
          if(value.length == 1) {
            FocusScope.of(context).nextFocus();
           // FocusScope.of(context).previousFocus();
          }
          {
            if(value.length == 4) {
              FocusScope.of(context).previousFocus();
              }
          }
        },
        style: const TextStyle(
        fontSize: 15, 
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          ),
        hintText: '0',
        ),
      
      ),
    );
  }
}