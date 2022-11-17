
import 'package:e_mobi/const/const.dart';
import 'package:e_mobi/views/auth_screen/login_screen.dart';
import 'package:e_mobi/widgets/applogo_widgetcommon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//creating a method to change screen

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //using getX
      Get.to(() => const LoginScreen());
    });
  }

  @override
  //isko startup pe show karana hai toh hum init stte ko use karenge
  void initState() {
    changeScreen();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(icSplashBg, width: 300),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appName.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appVersion.text.white.make(),
            Spacer(),
            credit.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
