import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiddy_market/view/main_page/screen_main_page.dart';
import 'package:kiddy_market/view/splash/boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    signIn(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             margin: const EdgeInsets.symmetric(horizontal: 145),
              height: 123,
              width: 95,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/Images/icon.png'))
              ),
            ),
            const Text('Kiddie',
                    style: TextStyle(
                      fontFamily: 'Inter-ExtraBold',
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2291FF),
                    ),
                    )
          ],
        ),
      ),
    ); 
  }
   Future<void> signIn(BuildContext context) async{
    await Future.delayed(const Duration(seconds: 3));
  //  Get.off(const BoardingScreen());
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (builder){
    return 
    StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
    //AsyncSnapshot<User?
      builder: (context,snapshot){
if(snapshot.connectionState==ConnectionState.active){
  if(snapshot.hasData){
    return ScreenMainPage();
  }
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  
}
return BoardingScreen();

  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BoardingScreen()));

 
//
    
   });}
   )); 
   //}
  }

}                  